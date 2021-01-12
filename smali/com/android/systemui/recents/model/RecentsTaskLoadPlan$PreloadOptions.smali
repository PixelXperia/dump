.class public Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$PreloadOptions;
.super Ljava/lang/Object;
.source "RecentsTaskLoadPlan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreloadOptions"
.end annotation


# instance fields
.field public loadTitles:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$PreloadOptions;->loadTitles:Z

    return-void
.end method
