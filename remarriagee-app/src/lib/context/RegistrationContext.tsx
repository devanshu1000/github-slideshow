'use client';

import React, { createContext, useReducer, useContext, ReactNode } from 'react';

// --- TYPE DEFINITIONS ---

export interface RegistrationData {
  // Step 1
  firstName: string;
  lastName: string;
  gender: string;
  mobileNumber: string;
  documentIdType: string;
  documentIdFile: File | null;
  consent: boolean;
  profileId: string;

  // Step 2
  religion: string;
  caste: string;
  height: string;
  isManglik: string;
  horoscopeMatch: string;
  country: string;
  state: string;
  city: string;
  maritalStatus: string;
  numberOfChildren: string;
  childrenLivingWithYou: string;
  dateOfDivorce?: string | null;

  // Step 3
  education: string;
  graduationCollege?: string;
  postGraduationCollege?: string;
  phdCollege?: string;
  occupation: string;
  annualIncome: string;
  smokingHabits: string;
  drinkingHabits: string;
  foodPreference: string;
  weight: string;
  bodyType: string;
  healthStatus?: string;
  familyType: string;
  numberOfSiblings: string;
  parentsOccupation?: string;

  // Step 4
  hobbies: string[];
  aboutMe: string;
  partnerPreferences?: any;
  profilePhotos: File[];
  privacyProfileView: string;
  privacyContact: string;
}

interface RegistrationState {
  step: number;
  data: RegistrationData;
}

type Action =
  | { type: 'SET_STEP'; payload: number }
  | { type: 'SET_DATA'; payload: Partial<RegistrationData> }
  | { type: 'NEXT_STEP' }
  | { type: 'PREV_STEP' };

// --- INITIAL STATE ---

const initialState: RegistrationState = {
  step: 1,
  data: {
    firstName: '',
    lastName: '',
    gender: '',
    mobileNumber: '',
    documentIdType: '',
    documentIdFile: null,
    consent: false,
    profileId: '',
    religion: '',
    caste: '',
    height: '',
    isManglik: '',
    horoscopeMatch: '',
    country: 'India',
    state: '',
    city: '',
    maritalStatus: 'Divorced',
    numberOfChildren: 'None',
    childrenLivingWithYou: 'No',
    dateOfDivorce: null,
    education: '',
    occupation: '',
    annualIncome: '',
    smokingHabits: '',
    drinkingHabits: '',
    foodPreference: '',
    weight: '',
    bodyType: '',
    healthStatus: '',
    familyType: '',
    numberOfSiblings: '',
    parentsOccupation: '',
    hobbies: [],
    aboutMe: '',
    profilePhotos: [],
    privacyProfileView: 'Everyone',
    privacyContact: 'Everyone',
  },
};

// --- REDUCER ---

const registrationReducer = (state: RegistrationState, action: Action): RegistrationState => {
  switch (action.type) {
    case 'SET_STEP':
      return { ...state, step: action.payload };
    case 'SET_DATA':
      return { ...state, data: { ...state.data, ...action.payload } };
    case 'NEXT_STEP':
      if (state.step < 4) {
        return { ...state, step: state.step + 1 };
      }
      return state;
    case 'PREV_STEP':
      if (state.step > 1) {
        return { ...state, step: state.step - 1 };
      }
      return state;
    default:
      return state;
  }
};

// --- CONTEXT & PROVIDER ---

const RegistrationContext = createContext<{
  state: RegistrationState;
  dispatch: React.Dispatch<Action>;
} | undefined>(undefined);

export const RegistrationProvider = ({ children }: { children: ReactNode }) => {
  const [state, dispatch] = useReducer(registrationReducer, initialState);

  return (
    <RegistrationContext.Provider value={{ state, dispatch }}>
      {children}
    </RegistrationContext.Provider>
  );
};

// --- CUSTOM HOOK ---

export const useRegistration = () => {
  const context = useContext(RegistrationContext);
  if (context === undefined) {
    throw new Error('useRegistration must be used within a RegistrationProvider');
  }
  return context;
};
