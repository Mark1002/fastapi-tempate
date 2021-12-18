"""Item endpoint."""
from typing import Optional
from fastapi import APIRouter

from app.models import Item

router = APIRouter(
    prefix="/items",
    tags=["items"]
)

@router.get("/{item_id}")
async def read_item(item_id: int, q: Optional[str] = None):
    return {"item_id": item_id, "q": q}

@router.put("/{item_id}")
async def update_item(item_id: int, item: Item):
    return {"item_name": item.name, "item_id": item_id}
