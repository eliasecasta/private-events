# Model

## User

    - has_many :Event

    - name:string
    - email:string

## Event

    - has_many :User

    - date:string
    - title:string
    - location:string
    - description:text


## users_events_association

### Users
    - user(id: 7):
        - event_id: 1
        - event_id: 2
        - event_id: 3

### Events
    - event(id: 1):
        - user_id: 7
        - user_id: 8
        - user_id: 10
