.class Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$5;
.super Landroid/content/BroadcastReceiver;
.source "DocomoClockContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->registerTimeEventReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$5;->this$0:Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$5;->this$0:Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->refreshTime()V

    return-void
.end method
