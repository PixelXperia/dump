.class public final synthetic Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationChildrenContainer$mq8_syHIoE4RlNW5Tv25FuIN7tI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationChildrenContainer$mq8_syHIoE4RlNW5Tv25FuIN7tI;->f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationChildrenContainer$mq8_syHIoE4RlNW5Tv25FuIN7tI;->f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->lambda$updateHeaderVisibility$1$NotificationChildrenContainer()V

    return-void
.end method
