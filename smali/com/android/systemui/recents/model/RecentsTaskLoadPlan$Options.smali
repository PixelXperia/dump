.class public Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
.super Ljava/lang/Object;
.source "RecentsTaskLoadPlan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public loadIcons:Z

.field public loadThumbnails:Z

.field public numVisibleTaskThumbnails:I

.field public numVisibleTasks:I

.field public onlyLoadForCache:Z

.field public onlyLoadPausedActivities:Z

.field public runningTaskId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadIcons:Z

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    .line 64
    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 65
    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    return-void
.end method
