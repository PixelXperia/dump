.class public Lcom/android/systemui/recents/events/EventBus$ReusableEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/events/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReusableEvent"
.end annotation


# instance fields
.field private mDispatchCount:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 277
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 287
    new-instance p0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {p0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw p0
.end method

.method onPostDispatch()V
    .locals 1

    .line 281
    invoke-super {p0}, Lcom/android/systemui/recents/events/EventBus$Event;->onPostDispatch()V

    .line 282
    iget v0, p0, Lcom/android/systemui/recents/events/EventBus$ReusableEvent;->mDispatchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/recents/events/EventBus$ReusableEvent;->mDispatchCount:I

    return-void
.end method
