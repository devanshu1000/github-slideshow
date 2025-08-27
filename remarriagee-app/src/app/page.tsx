import Link from 'next/link';

export default function HomePage() {
  return (
    <div className="flex flex-col">
      {/* Hero Section */}
      <section className="w-full py-12 md:py-24 lg:py-32 xl:py-48 bg-gray-100 dark:bg-gray-800">
        <div className="container mx-auto px-4 md:px-6">
          <div className="grid gap-6 lg:grid-cols-[1fr_400px] lg:gap-12 xl:grid-cols-[1fr_600px]">
            <div className="flex flex-col justify-center space-y-4">
              <div className="space-y-2">
                <h1 className="text-3xl font-bold tracking-tighter sm:text-5xl xl:text-6xl/none">
                  Find Your Perfect Partner, Again.
                </h1>
                <p className="max-w-[600px] text-gray-500 md:text-xl dark:text-gray-400">
                  RE MARRIAGEE is a dedicated platform for divorced, widowed, and mature singles to find meaningful connections.
                </p>
              </div>
              <div className="flex flex-col gap-2 min-[400px]:flex-row">
                <Link
                  href="/register"
                  className="inline-flex h-10 items-center justify-center rounded-md bg-gray-900 px-8 text-sm font-medium text-gray-50 shadow transition-colors hover:bg-gray-900/90 focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-gray-950 disabled:pointer-events-none disabled:opacity-50 dark:bg-gray-50 dark:text-gray-900 dark:hover:bg-gray-50/90 dark:focus-visible:ring-gray-300"
                >
                  Register Free
                </Link>
                <button className="inline-flex h-10 items-center justify-center rounded-md border border-gray-200 bg-white px-8 text-sm font-medium shadow-sm transition-colors hover:bg-gray-100 hover:text-gray-900 focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-gray-950 disabled:pointer-events-none disabled:opacity-50 dark:border-gray-800 dark:bg-gray-950 dark:hover:bg-gray-800 dark:hover:text-gray-50 dark:focus-visible:ring-gray-300">
                  Login
                </button>
              </div>
            </div>
            {/* Placeholder for Groom/Bride avatars */}
            <div className="hidden lg:flex items-center justify-center">
              <p className="text-gray-500">[Groom/Bride Avatars Placeholder]</p>
            </div>
          </div>
        </div>
      </section>

      {/* Quick Search Section */}
      <section className="w-full py-12 md:py-24">
        <div className="container mx-auto px-4 md:px-6">
          <div className="flex flex-col items-center justify-center space-y-4 text-center">
            <h2 className="text-3xl font-bold tracking-tighter sm:text-4xl">Quick Profile Search</h2>
            <p className="max-w-[600px] text-gray-500 md:text-xl">
              Find a profile by entering their unique Profile ID.
            </p>
            <div className="w-full max-w-sm space-x-2 flex">
              <input type="text" placeholder="Enter Profile ID" className="flex-1 rounded-md border border-gray-300 px-3 py-2"/>
              <button className="rounded-md bg-gray-900 text-white px-4 py-2">Search</button>
            </div>
          </div>
        </div>
      </section>

      {/* Why Us Section */}
      <section className="w-full py-12 md:py-24 bg-gray-100 dark:bg-gray-800">
        <div className="container mx-auto px-4 md:px-6">
          <h2 className="text-3xl font-bold tracking-tighter text-center sm:text-4xl mb-8">Why Choose RE MARRIAGEE?</h2>
          <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
            <div className="text-center p-4">
              <h3 className="font-bold text-xl mb-2">Privacy-First</h3>
              <p className="text-gray-500">Your privacy is our priority. We ensure your data is secure and you control who sees your profile.</p>
            </div>
            <div className="text-center p-4">
              <h3 className="font-bold text-xl mb-2">Verified Profiles</h3>
              <p className="text-gray-500">All profiles are verified with government-issued IDs to build a community of trust.</p>
            </div>
            <div className="text-center p-4">
              <h3 className="font-bold text-xl mb-2">Emotional Intelligence</h3>
              <p className="text-gray-500">Our AI-powered matchmaking considers emotional compatibility to help you find a true partner.</p>
            </div>
          </div>
        </div>
      </section>

      {/* Testimonials Section */}
      <section className="w-full py-12 md:py-24">
        <div className="container mx-auto px-4 md:px-6">
          <h2 className="text-3xl font-bold tracking-tighter text-center sm:text-4xl mb-8">Success Stories</h2>
          <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
            <div className="border rounded-lg p-6">
              <p className="text-gray-500 mb-4">"I found my soulmate here. The verification process made me feel safe."</p>
              <p className="font-bold">- Jane Doe</p>
            </div>
            <div className="border rounded-lg p-6">
              <p className="text-gray-500 mb-4">"After my divorce, I never thought I would find love again. RE MARRIAGEE proved me wrong."</p>
              <p className="font-bold">- John Smith</p>
            </div>
          </div>
        </div>
      </section>
    </div>
  );
}
