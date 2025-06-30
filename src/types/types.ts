export type Ticket = {
  id: number;
  title: string;
  status: 'Not started' | 'In progress' | 'Done';
  author: string;
};
