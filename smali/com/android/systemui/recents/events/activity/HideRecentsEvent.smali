.class public Lcom/android/systemui/recents/events/activity/HideRecentsEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "HideRecentsEvent.java"


# instance fields
.field public final triggeredFromAltTab:Z

.field public final triggeredFromHomeKey:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 31
    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromAltTab:Z

    .line 32
    iput-boolean p2, p0, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromHomeKey:Z

    return-void
.end method
