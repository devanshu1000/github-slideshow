export default function ContactUsPage() {
  return (
    <div className="container mx-auto py-12 px-4 md:px-6">
      <h1 className="text-3xl font-bold mb-4">Contact Us</h1>
      <div className="prose dark:prose-invert max-w-none">
        <p className="mb-4">
          Have questions? We'd love to hear from you. Reach out to us via the form below or through our contact details.
        </p>
        {/* Placeholder for a contact form */}
        <div className="border rounded-lg p-8 bg-gray-50 dark:bg-gray-800">
          <p className="text-gray-500">[Contact Form Placeholder]</p>
          <div className="mt-6">
            <p><strong>Email:</strong> support@remarriagee.com</p>
            <p><strong>WhatsApp:</strong> +1 (555) 123-4567</p>
          </div>
        </div>
      </div>
    </div>
  );
}
