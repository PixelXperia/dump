.class public Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "HideStackActionButtonEvent.java"


# instance fields
.field public final translate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 30
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 34
    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;->translate:Z

    return-void
.end method
