.class public Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "DockedTopTaskEvent.java"


# instance fields
.field public initialRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;->initialRect:Landroid/graphics/Rect;

    return-void
.end method
