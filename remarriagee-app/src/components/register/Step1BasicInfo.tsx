'use client';

import React from 'react';
import { useRegistration } from '@/lib/context/RegistrationContext';

const Step1BasicInfo = () => {
  const { state, dispatch } = useRegistration();
  const { data } = state;

  const handleChange = (e: React.ChangeEvent<HTMLInputElement | HTMLSelectElement>) => {
    dispatch({ type: 'SET_DATA', payload: { [e.target.name]: e.target.value } });
  };

  const handleFileChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    if (e.target.files) {
      dispatch({ type: 'SET_DATA', payload: { [e.target.name]: e.target.files[0] } });
    }
  };

  const handleCheckboxChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    dispatch({ type: 'SET_DATA', payload: { [e.target.name]: e.target.checked } });
  };

  return (
    <div className="space-y-6">
      <h2 className="text-xl font-semibold text-gray-800 dark:text-white">Step 1: Basic Identity & Verification</h2>

      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
        <div>
          <label htmlFor="firstName" className="block text-sm font-medium text-gray-700 dark:text-gray-300">First Name</label>
          <input type="text" name="firstName" id="firstName" value={data.firstName} onChange={handleChange} className="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white" required />
        </div>
        <div>
          <label htmlFor="lastName" className="block text-sm font-medium text-gray-700 dark:text-gray-300">Last Name</label>
          <input type="text" name="lastName" id="lastName" value={data.lastName} onChange={handleChange} className="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white" required />
        </div>
      </div>

      <div>
        <label htmlFor="gender" className="block text-sm font-medium text-gray-700 dark:text-gray-300">Gender</label>
        <select name="gender" id="gender" value={data.gender} onChange={handleChange} className="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white" required>
          <option value="">Select Gender</option>
          <option value="Male">Male</option>
          <option value="Female">Female</option>
          <option value="Other">Other</option>
        </select>
      </div>

      <div>
        <label htmlFor="mobileNumber" className="block text-sm font-medium text-gray-700 dark:text-gray-300">Mobile Number (OTP will be sent)</label>
        <input type="tel" name="mobileNumber" id="mobileNumber" value={data.mobileNumber} onChange={handleChange} className="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white" required />
      </div>

      <div>
        <label htmlFor="documentIdType" className="block text-sm font-medium text-gray-700 dark:text-gray-300">Document ID Type</label>
        <select name="documentIdType" id="documentIdType" value={data.documentIdType} onChange={handleChange} className="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white" required>
          <option value="">Select Document Type</option>
          <option value="Passport">Passport</option>
          <option value="Aadhaar Card">Aadhaar Card</option>
          <option value="PAN Card">PAN Card</option>
        </select>
      </div>

      <div>
        <label htmlFor="documentIdFile" className="block text-sm font-medium text-gray-700 dark:text-gray-300">Upload Document ID</label>
        <input type="file" name="documentIdFile" id="documentIdFile" onChange={handleFileChange} className="mt-1 block w-full text-sm text-gray-500 file:mr-4 file:py-2 file:px-4 file:rounded-full file:border-0 file:text-sm file:font-semibold file:bg-violet-50 file:text-violet-700 hover:file:bg-violet-100 dark:file:bg-violet-900 dark:file:text-violet-200 dark:hover:file:bg-violet-800" />
        <p className="text-xs text-gray-500 mt-1 dark:text-gray-400">System will check if your name matches the uploaded document.</p>
      </div>

      <div className="flex items-start">
        <div className="flex items-center h-5">
          <input id="consent" name="consent" type="checkbox" checked={data.consent} onChange={handleCheckboxChange} className="focus:ring-indigo-500 h-4 w-4 text-indigo-600 border-gray-300 rounded" />
        </div>
        <div className="ml-3 text-sm">
          <label htmlFor="consent" className="font-medium text-gray-700 dark:text-gray-300">I confirm the above details are correct</label>
        </div>
      </div>
    </div>
  );
};

export default Step1BasicInfo;
