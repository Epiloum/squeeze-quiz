export const FAVORITE_ON = "FAVORITE_ON"
export const FAVORITE_OFF = "FAVORITE_OFF";

export const favorite = {
    on: (idx: number) => ({ 
        type: FAVORITE_ON,
        payload: { idx }
    }),
    off: (idx: number) => ({ 
        type: FAVORITE_OFF,
        payload: { idx }
    })
};