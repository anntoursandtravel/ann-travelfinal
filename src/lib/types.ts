export interface Place {
  id: string;
  name: string;
  country: 'Uganda' | 'Kenya' | 'Tanzania' | 'Zanzibar' | 'Rwanda';
  type: 'Attraction' | 'Hotel' | 'Restaurant';
  description: string;
  longDescription: string;
  images: string[];
  location: {
    lat: number;
    lng: number;
  };
  contact: {
    phone: string;
    website: string;
  };
  rating: number;
}
export const COUNTRIES: Array<Place['country']> = ['Uganda', 'Kenya', 'Tanzania', 'Zanzibar', 'Rwanda'];
export const COUNTRY_ISO_MAP: Record<Place['country'], string> = {
  'Uganda': 'UG',
  'Kenya': 'KE',
  'Tanzania': 'TZ',
  'Zanzibar': 'TZ',
  'Rwanda': 'RW'
};
