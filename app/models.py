"""Models."""
from typing import Optional

from pydantic import BaseModel

class Item(BaseModel):
    name: str
    price: float
    is_offter: Optional[bool] = None
