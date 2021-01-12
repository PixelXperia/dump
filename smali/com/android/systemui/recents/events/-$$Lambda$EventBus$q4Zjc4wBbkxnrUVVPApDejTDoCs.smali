.class public final synthetic Lcom/android/systemui/recents/events/-$$Lambda$EventBus$q4Zjc4wBbkxnrUVVPApDejTDoCs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/events/EventBus;

.field private final synthetic f$1:Lcom/android/systemui/recents/events/EventHandler;

.field private final synthetic f$2:Lcom/android/systemui/recents/events/EventBus$Event;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/events/EventBus;Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventBus$Event;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/-$$Lambda$EventBus$q4Zjc4wBbkxnrUVVPApDejTDoCs;->f$0:Lcom/android/systemui/recents/events/EventBus;

    iput-object p2, p0, Lcom/android/systemui/recents/events/-$$Lambda$EventBus$q4Zjc4wBbkxnrUVVPApDejTDoCs;->f$1:Lcom/android/systemui/recents/events/EventHandler;

    iput-object p3, p0, Lcom/android/systemui/recents/events/-$$Lambda$EventBus$q4Zjc4wBbkxnrUVVPApDejTDoCs;->f$2:Lcom/android/systemui/recents/events/EventBus$Event;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/events/-$$Lambda$EventBus$q4Zjc4wBbkxnrUVVPApDejTDoCs;->f$0:Lcom/android/systemui/recents/events/EventBus;

    iget-object v1, p0, Lcom/android/systemui/recents/events/-$$Lambda$EventBus$q4Zjc4wBbkxnrUVVPApDejTDoCs;->f$1:Lcom/android/systemui/recents/events/EventHandler;

    iget-object p0, p0, Lcom/android/systemui/recents/events/-$$Lambda$EventBus$q4Zjc4wBbkxnrUVVPApDejTDoCs;->f$2:Lcom/android/systemui/recents/events/EventBus$Event;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/recents/events/EventBus;->lambda$queueEvent$0$EventBus(Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method
