import { NextResponse } from 'next/server';
import { auth } from '@clerk/nextjs/server';

// This is a placeholder for a real database client.
// When we have database credentials, we will replace this.
const db = {
  user: {
    findUnique: async (args: any) => {
      console.log("DB_MOCK: findUnique user", args);
      // In a real scenario, this would return a user or null.
      // Returning a mock user for demonstration purposes.
      if (args.where.clerk_user_id) {
        return { id: 'mock_user_123', clerk_user_id: args.where.clerk_user_id };
      }
      return null;
    },
  },
  userProfile: {
    upsert: async (args: any) => {
      console.log("DB_MOCK: upsert userProfile", args);
      // In a real scenario, this would update or insert a profile.
      return { ...args.create, ...args.update };
    }
  }
};


export async function POST(request: Request) {
  try {
    const { userId } = auth();
    if (!userId) {
      return new NextResponse('Unauthorized', { status: 401 });
    }

    const body = await request.json();

    console.log(`Received registration data for user: ${userId}`);
    console.log('Data to save:', body);

    // --- Database Logic (using mock DB) ---
    const user = await db.user.findUnique({ where: { clerk_user_id: userId } });

    // In a real app, you might create the user here if they don't exist.
    // For now, we assume the user exists from the mock.
    if (user) {
      await db.userProfile.upsert({
        where: { userId: user.id },
        update: body,
        create: { userId: user.id, ...body },
      });
    }
    // --- End of Database Logic ---

    return NextResponse.json({ success: true, message: 'Data saved successfully.' });

  } catch (error) {
    console.error('[REGISTER_POST]', error);
    return new NextResponse('Internal Error', { status: 500 });
  }
}
