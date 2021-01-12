.class public Lcom/sonymobile/settings/search/SearchPreferenceManager;
.super Landroidx/preference/PreferenceManager;
.source "SearchPreferenceManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    new-instance v0, Lcom/sonymobile/settings/search/MockActivity;

    invoke-direct {v0, p1}, Lcom/sonymobile/settings/search/MockActivity;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroidx/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    return-void
.end method
