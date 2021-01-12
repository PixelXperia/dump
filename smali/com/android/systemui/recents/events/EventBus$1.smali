.class Lcom/android/systemui/recents/events/EventBus$1;
.super Ljava/lang/Object;
.source "EventBus.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/events/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/recents/events/EventHandler;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventHandler;)I
    .locals 2

    .line 310
    iget p0, p1, Lcom/android/systemui/recents/events/EventHandler;->priority:I

    iget v0, p2, Lcom/android/systemui/recents/events/EventHandler;->priority:I

    if-eq p0, v0, :cond_0

    sub-int/2addr v0, p0

    return v0

    .line 313
    :cond_0
    iget-object p0, p2, Lcom/android/systemui/recents/events/EventHandler;->subscriber:Lcom/android/systemui/recents/events/Subscriber;

    iget-wide v0, p0, Lcom/android/systemui/recents/events/Subscriber;->registrationTime:J

    iget-object p0, p1, Lcom/android/systemui/recents/events/EventHandler;->subscriber:Lcom/android/systemui/recents/events/Subscriber;

    iget-wide p0, p0, Lcom/android/systemui/recents/events/Subscriber;->registrationTime:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 305
    check-cast p1, Lcom/android/systemui/recents/events/EventHandler;

    check-cast p2, Lcom/android/systemui/recents/events/EventHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/events/EventBus$1;->compare(Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventHandler;)I

    move-result p0

    return p0
.end method
