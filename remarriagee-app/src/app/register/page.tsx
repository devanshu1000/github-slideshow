'use client';

import React from 'react';
import { RegistrationProvider, useRegistration } from '@/lib/context/RegistrationContext';
import Step1BasicInfo from '@/components/register/Step1BasicInfo';
import Step2PersonalInfo from '@/components/register/Step2PersonalInfo';
import Step3CareerInfo from '@/components/register/Step3CareerInfo';
import Step4Preferences from '@/components/register/Step4Preferences';

// The component that contains the form logic
const RegistrationForm = () => {
  const { state, dispatch } = useRegistration();
  const [isLoading, setIsLoading] = React.useState(false);
  const [error, setError] = React.useState<string | null>(null);

  const renderStep = () => {
    switch (state.step) {
      case 1:
        return <Step1BasicInfo />;
      case 2:
        return <Step2PersonalInfo />;
      case 3:
        return <Step3CareerInfo />;
      case 4:
        return <Step4Preferences />;
      default:
        return <Step1BasicInfo />;
    }
  };

  const saveData = async () => {
    setIsLoading(true);
    setError(null);
    try {
      // We need to remove File objects before sending, as they are not serializable.
      const dataToSend = { ...state.data };
      delete dataToSend.documentIdFile;
      delete dataToSend.profilePhotos;

      const response = await fetch('/api/register', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(dataToSend),
      });

      if (!response.ok) {
        throw new Error('Failed to save your progress. Please try again.');
      }
      return true;
    } catch (err: any) {
      setError(err.message);
      return false;
    } finally {
      setIsLoading(false);
    }
  };

  const handleNext = async () => {
    const success = await saveData();
    if (success) {
      dispatch({ type: 'NEXT_STEP' });
    }
  };

  const handleBack = () => {
    dispatch({ type: 'PREV_STEP' });
  };

  const handleSubmit = async () => {
    const success = await saveData();
    if (success) {
      alert('Registration Complete! (Data logged to console, not saved permanently)');
      console.log('Final Registration Data:', state.data);
      // In a real app, you would redirect here, e.g., router.push('/dashboard')
    }
  };

  return (
    <div className="w-full max-w-2xl mx-auto p-8 border rounded-lg shadow-lg bg-white dark:bg-gray-800">
      {/* Progress Bar */}
      <div className="mb-8">
        <h2 className="text-xl font-semibold text-center mb-2">Step {state.step} of 4</h2>
        <div className="w-full bg-gray-200 rounded-full h-2.5 dark:bg-gray-700">
          <div className="bg-blue-600 h-2.5 rounded-full" style={{ width: `${(state.step / 4) * 100}%` }}></div>
        </div>
      </div>

      <div className="min-h-[300px]">
        {isLoading ? <div className="flex justify-center items-center h-full">Loading...</div> : renderStep()}
      </div>

      {error && <p className="text-red-500 text-sm mt-4 text-center">{error}</p>}

      {/* Navigation Buttons */}
      <div className="flex justify-between mt-8">
        {state.step > 1 ? (
          <button
            onClick={handleBack}
            disabled={isLoading}
            className="px-6 py-2 border rounded-md hover:bg-gray-100 dark:hover:bg-gray-700 disabled:opacity-50"
          >
            Back
          </button>
        ) : (
          <div /> // Placeholder to keep "Next" button on the right
        )}

        {state.step < 4 ? (
          <button
            onClick={handleNext}
            disabled={isLoading}
            className="px-6 py-2 bg-black text-white rounded-md hover:bg-gray-800 disabled:opacity-50"
          >
            {isLoading ? 'Saving...' : 'Next'}
          </button>
        ) : (
          <button
            onClick={handleSubmit}
            disabled={isLoading}
            className="px-6 py-2 bg-green-600 text-white rounded-md hover:bg-green-700 disabled:opacity-50"
          >
            {isLoading ? 'Saving...' : 'Finish Registration'}
          </button>
        )}
      </div>
    </div>
  );
};

// The main page component that wraps everything in the provider
export default function RegisterPage() {
  return (
    <main className="container mx-auto py-12 px-4 md:px-6">
      <div className="flex justify-center">
        <RegistrationProvider>
          <div className="w-full lg:w-3/4">
            <h1 className="text-3xl font-bold mb-8 text-center">Create Your Profile</h1>
            <RegistrationForm />
          </div>
        </RegistrationProvider>
      </div>
    </main>
  );
}
