'use client';

import React from 'react';
import { useRegistration } from '@/lib/context/RegistrationContext';

const Step4Preferences = () => {
  const { state, dispatch } = useRegistration();
  const { data } = state;

  const handleChange = (e: React.ChangeEvent<HTMLInputElement | HTMLSelectElement | HTMLTextAreaElement>) => {
    dispatch({ type: 'SET_DATA', payload: { [e.target.name]: e.target.value } });
  };

  const handleFileChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    if (e.target.files) {
      // Convert FileList to array
      const filesArray = Array.from(e.target.files);
      dispatch({ type: 'SET_DATA', payload: { [e.target.name]: filesArray } });
    }
  };

  return (
    <div className="space-y-6">
      <h2 className="text-xl font-semibold text-gray-800 dark:text-white">Step 4: Preferences, Personality & Privacy</h2>

      <div>
        <label htmlFor="aboutMe" className="block text-sm font-medium text-gray-700 dark:text-gray-300">About Me (Required)</label>
        <textarea
          name="aboutMe"
          id="aboutMe"
          rows={5}
          value={data.aboutMe}
          onChange={handleChange}
          className="mt-1 block w-full rounded-md border-gray-300 shadow-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white"
          placeholder="Write a short personal introduction about yourself, your background, and what you're looking for in a partner."
          required
        />
      </div>

      <div>
        <label htmlFor="hobbies" className="block text-sm font-medium text-gray-700 dark:text-gray-300">Hobbies (comma-separated)</label>
        <input
          type="text"
          name="hobbies"
          id="hobbies"
          value={data.hobbies.join(', ')}
          onChange={(e) => dispatch({ type: 'SET_DATA', payload: { hobbies: e.target.value.split(',').map(h => h.trim()) } })}
          className="mt-1 block w-full rounded-md border-gray-300 shadow-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white"
          placeholder="e.g., Travel, Music, Fitness, Reading"
        />
      </div>

      <div>
        <label htmlFor="profilePhotos" className="block text-sm font-medium text-gray-700 dark:text-gray-300">Upload Profile Photos (at least 1 required)</label>
        <input
          type="file"
          name="profilePhotos"
          id="profilePhotos"
          multiple
          accept="image/*"
          onChange={handleFileChange}
          className="mt-1 block w-full text-sm text-gray-500 file:mr-4 file:py-2 file:px-4 file:rounded-full file:border-0 file:text-sm file:font-semibold file:bg-violet-50 file:text-violet-700 hover:file:bg-violet-100 dark:file:bg-violet-900 dark:file:text-violet-200 dark:hover:file:bg-violet-800"
        />
      </div>

      <div className="border-t pt-6 mt-6">
        <h3 className="text-lg font-medium text-gray-800 dark:text-white">Privacy Settings</h3>
        <div className="space-y-4 mt-4">
          <div>
            <label htmlFor="privacyProfileView" className="block text-sm font-medium text-gray-700 dark:text-gray-300">Who can see my profile?</label>
            <select name="privacyProfileView" id="privacyProfileView" value={data.privacyProfileView} onChange={handleChange} className="mt-1 block w-full rounded-md border-gray-300 shadow-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white">
              <option>Everyone</option>
              <option>Premium Members</option>
              <option>Only Verified Profiles</option>
            </select>
          </div>
          <div>
            <label htmlFor="privacyContact" className="block text-sm font-medium text-gray-700 dark:text-gray-300">Who can contact me?</label>
            <select name="privacyContact" id="privacyContact" value={data.privacyContact} onChange={handleChange} className="mt-1 block w-full rounded-md border-gray-300 shadow-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white">
              <option>Everyone</option>
              <option>Paid Members Only</option>
              <option>Verified Members Only</option>
            </select>
          </div>
        </div>
      </div>

    </div>
  );
};

export default Step4Preferences;
