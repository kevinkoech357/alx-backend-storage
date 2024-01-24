#!/usr/bin/env python3

"""
List all docs in a mongo collection.
"""


def list_all(mongo_collection):
    """
    Lists all documents in the specified MongoDB collection.
    """
    documents = [doc for doc in mongo_collection.find()]

    return documents
