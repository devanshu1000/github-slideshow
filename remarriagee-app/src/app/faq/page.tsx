export default function FaqPage() {
  return (
    <div className="container mx-auto py-12 px-4 md:px-6">
      <h1 className="text-3xl font-bold mb-8 text-center">Frequently Asked Questions</h1>
      <div className="max-w-2xl mx-auto">
        <div className="space-y-6">
          <div>
            <h2 className="font-semibold text-lg">How does the verification process work?</h2>
            <p className="text-gray-600 dark:text-gray-400">
              We require all users to upload a government-issued ID to verify their identity. This helps ensure a safe and trustworthy community by preventing fake profiles. Your document is used for verification only and is not shared with other users.
            </p>
          </div>
          <div>
            <h2 className="font-semibold text-lg">What are the membership plans?</h2>
            <p className="text-gray-600 dark:text-gray-400">
              We offer a free plan with limited features, allowing you to create a profile and browse. Our premium plans unlock advanced features like unlimited messaging, enhanced privacy controls, and access to our AI matchmaking analysis.
            </p>
          </div>
          <div>
            <h2 className="font-semibold text-lg">Is my personal information safe?</h2>
            <p className="text-gray-600 dark:text-gray-400">
              Absolutely. Privacy is at the core of our platform. We use industry-standard security measures to protect your data, and you have granular control over who can see your profile and contact information.
            </p>
          </div>
        </div>
      </div>
    </div>
  );
}
