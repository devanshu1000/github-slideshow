'use client';

import React from 'react';
import { useRegistration } from '@/lib/context/RegistrationContext';

const Step3CareerInfo = () => {
  const { state, dispatch } = useRegistration();
  const { data } = state;

  const handleChange = (e: React.ChangeEvent<HTMLInputElement | HTMLSelectElement | HTMLTextAreaElement>) => {
    dispatch({ type: 'SET_DATA', payload: { [e.target.name]: e.target.value } });
  };

  const educationLevels = ["No Schooling", "10th", "12th", "Diploma", "Graduation", "Post Graduation", "Doctorate", "Other"];
  const occupations = ["Accountant", "Architect", "Doctor", "Engineer", "Farmer", "Lawyer", "Pilot", "Software Professional", "Teacher", "Business Owner", "Government Employee", "Not Employed", "Other"];
  const incomeRanges = ["Upto $10,000", "$10,001 - $25,000", "$25,001 - $50,000", "$50,001 - $100,000", "$100,001 - $250,000", "$250,001+", "Prefer not to say"];

  return (
    <div className="space-y-6">
      <h2 className="text-xl font-semibold text-gray-800 dark:text-white">Step 3: Education, Career & Lifestyle</h2>

      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
        <div>
          <label htmlFor="education" className="block text-sm font-medium text-gray-700 dark:text-gray-300">Highest Education</label>
          <select name="education" id="education" value={data.education} onChange={handleChange} className="mt-1 block w-full rounded-md border-gray-300 shadow-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white">
            {educationLevels.map(e => <option key={e} value={e}>{e}</option>)}
          </select>
        </div>
        <div>
          <label htmlFor="occupation" className="block text-sm font-medium text-gray-700 dark:text-gray-300">Occupation</label>
          <select name="occupation" id="occupation" value={data.occupation} onChange={handleChange} className="mt-1 block w-full rounded-md border-gray-300 shadow-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white">
            {occupations.map(o => <option key={o} value={o}>{o}</option>)}
          </select>
        </div>
        <div>
          <label htmlFor="annualIncome" className="block text-sm font-medium text-gray-700 dark:text-gray-300">Annual Income</label>
          <select name="annualIncome" id="annualIncome" value={data.annualIncome} onChange={handleChange} className="mt-1 block w-full rounded-md border-gray-300 shadow-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white">
            {incomeRanges.map(i => <option key={i} value={i}>{i}</option>)}
          </select>
        </div>
        <div>
          <label htmlFor="familyType" className="block text-sm font-medium text-gray-700 dark:text-gray-300">Family Type</label>
          <select name="familyType" id="familyType" value={data.familyType} onChange={handleChange} className="mt-1 block w-full rounded-md border-gray-300 shadow-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white">
            <option value="">Select Type</option>
            <option value="Joint">Joint</option>
            <option value="Nuclear">Nuclear</option>
          </select>
        </div>
        <div>
          <label htmlFor="smokingHabits" className="block text-sm font-medium text-gray-700 dark:text-gray-300">Smoking Habits</label>
          <select name="smokingHabits" id="smokingHabits" value={data.smokingHabits} onChange={handleChange} className="mt-1 block w-full rounded-md border-gray-300 shadow-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white">
            <option value="">Select Habit</option>
            <option value="Smoker">Smoker</option>
            <option value="Non-Smoker">Non-Smoker</option>
          </select>
        </div>
        <div>
          <label htmlFor="drinkingHabits" className="block text-sm font-medium text-gray-700 dark:text-gray-300">Drinking Habits</label>
          <select name="drinkingHabits" id="drinkingHabits" value={data.drinkingHabits} onChange={handleChange} className="mt-1 block w-full rounded-md border-gray-300 shadow-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white">
            <option value="">Select Habit</option>
            <option value="Drinks">Drinks</option>
            <option value="Does Not Drink">Does Not Drink</option>
          </select>
        </div>
        <div>
          <label htmlFor="foodPreference" className="block text-sm font-medium text-gray-700 dark:text-gray-300">Food Preference</label>
          <select name="foodPreference" id="foodPreference" value={data.foodPreference} onChange={handleChange} className="mt-1 block w-full rounded-md border-gray-300 shadow-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white">
            <option value="">Select Preference</option>
            <option value="Vegetarian">Vegetarian</option>
            <option value="Non-Vegetarian">Non-Vegetarian</option>
            <option value="Vegan">Vegan</option>
          </select>
        </div>
        <div>
          <label htmlFor="weight" className="block text-sm font-medium text-gray-700 dark:text-gray-300">Weight (in kg)</label>
          <input type="number" name="weight" id="weight" value={data.weight} onChange={handleChange} className="mt-1 block w-full rounded-md border-gray-300 shadow-sm dark:bg-gray-700 dark:border-gray-600 dark:text-white" />
        </div>
      </div>
    </div>
  );
};

export default Step3CareerInfo;
