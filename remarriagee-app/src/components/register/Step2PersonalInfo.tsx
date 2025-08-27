'use client';

import React from 'react';
import { useRegistration } from '@/lib/context/RegistrationContext';

const Step2PersonalInfo = () => {
  const { state, dispatch } = useRegistration();
  const { data } = state;

  const handleChange = (e: React.ChangeEvent<HTMLInputElement | HTMLSelectElement>) => {
    dispatch({ type: 'SET_DATA', payload: { [e.target.name]: e.target.value } });
  };

  const religions = ["Hindu", "Muslim", "Christian", "Sikh", "Buddhist", "Parsi", "Jain", "Jewish", "Bahai", "Other"];
  const maritalStatuses = ["Divorced", "Never Married", "Awaiting Divorce", "Widowed", "Annulled"];
  const heights = ["4'6\" (137cm)", "4'7\" (140cm)", "4'8\" (142cm)", "4'9\" (145cm)", "5'0\" (152cm)", "5'1\" (155cm)", "5'2\" (157cm)", "5'3\" (160cm)", "5'4\" (163cm)", "5'5\" (165cm)", "5'6\" (168cm)", "5'7\" (170cm)", "5'8\" (173cm)", "5'9\" (175cm)", "6'0\" (183cm)", "6'1\" (185cm)", "6'2\" (188cm)", "6'3\" (191cm)", "6'4\" (193cm)"];

  return (
    <div className="space-y-6">
      <h2 className="text-xl font-semibold text-gray-800 dark:text-white">Step 2: Personal & Religious Information</h2>

      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
        <div>
          <label htmlFor="religion" className="block text-sm font-medium text-gray-700 dark:text-gray-300">Religion</label>
          <select name="religion" id="religion" value={data.religion} onChange={handleChange} className="mt-1 block w-full rounded-md border-gray-300 shadow-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white">
            {religions.map(r => <option key={r} value={r}>{r}</option>)}
          </select>
        </div>
        <div>
          <label htmlFor="caste" className="block text-sm font-medium text-gray-700 dark:text-gray-300">Caste/Community</label>
          <input type="text" name="caste" id="caste" value={data.caste} onChange={handleChange} placeholder="e.g., Brahmin, Syed" className="mt-1 block w-full rounded-md border-gray-300 shadow-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white" />
        </div>
        <div>
          <label htmlFor="height" className="block text-sm font-medium text-gray-700 dark:text-gray-300">Height</label>
          <select name="height" id="height" value={data.height} onChange={handleChange} className="mt-1 block w-full rounded-md border-gray-300 shadow-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white">
            {heights.map(h => <option key={h} value={h}>{h}</option>)}
          </select>
        </div>
        <div>
          <label htmlFor="maritalStatus" className="block text-sm font-medium text-gray-700 dark:text-gray-300">Marital Status</label>
          <select name="maritalStatus" id="maritalStatus" value={data.maritalStatus} onChange={handleChange} className="mt-1 block w-full rounded-md border-gray-300 shadow-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white">
            {maritalStatuses.map(s => <option key={s} value={s}>{s}</option>)}
          </select>
        </div>
        <div>
          <label htmlFor="country" className="block text-sm font-medium text-gray-700 dark:text-gray-300">Country</label>
          <input type="text" name="country" id="country" value={data.country} onChange={handleChange} className="mt-1 block w-full rounded-md border-gray-300 shadow-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white" />
        </div>
        <div>
          <label htmlFor="state" className="block text-sm font-medium text-gray-700 dark:text-gray-300">State / Province</label>
          <input type="text" name="state" id="state" value={data.state} onChange={handleChange} className="mt-1 block w-full rounded-md border-gray-300 shadow-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white" />
        </div>
        <div>
          <label htmlFor="city" className="block text-sm font-medium text-gray-700 dark:text-gray-300">City</label>
          <input type="text" name="city" id="city" value={data.city} onChange={handleChange} className="mt-1 block w-full rounded-md border-gray-300 shadow-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white" />
        </div>
        <div>
          <label htmlFor="numberOfChildren" className="block text-sm font-medium text-gray-700 dark:text-gray-300">Number of Children</label>
          <select name="numberOfChildren" id="numberOfChildren" value={data.numberOfChildren} onChange={handleChange} className="mt-1 block w-full rounded-md border-gray-300 shadow-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white">
            <option value="None">None</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3+">3+</option>
          </select>
        </div>
        {data.numberOfChildren !== 'None' && data.numberOfChildren !== '' && (
          <div>
            <label htmlFor="childrenLivingWithYou" className="block text-sm font-medium text-gray-700 dark:text-gray-300">Children Living With You?</label>
            <select name="childrenLivingWithYou" id="childrenLivingWithYou" value={data.childrenLivingWithYou} onChange={handleChange} className="mt-1 block w-full rounded-md border-gray-300 shadow-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white">
              <option value="Yes">Yes</option>
              <option value="No">No</option>
            </select>
          </div>
        )}
      </div>
    </div>
  );
};

export default Step2PersonalInfo;
