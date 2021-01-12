.class public final synthetic Lcom/android/systemui/recents/events/-$$Lambda$a517Vrmm8lfhf0yP73BQOnPEOkc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/events/EventBus$Event;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/events/EventBus$Event;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/-$$Lambda$a517Vrmm8lfhf0yP73BQOnPEOkc;->f$0:Lcom/android/systemui/recents/events/EventBus$Event;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/recents/events/-$$Lambda$a517Vrmm8lfhf0yP73BQOnPEOkc;->f$0:Lcom/android/systemui/recents/events/EventBus$Event;

    invoke-virtual {p0}, Lcom/android/systemui/recents/events/EventBus$Event;->onPostDispatch()V

    return-void
.end method
