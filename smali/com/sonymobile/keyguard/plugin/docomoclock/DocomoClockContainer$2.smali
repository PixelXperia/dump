.class Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$2;
.super Ljava/lang/Object;
.source "DocomoClockContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->startClockTicking()V
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

    .line 181
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$2;->this$0:Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer$2;->this$0:Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;

    invoke-static {p0}, Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;->access$100(Lcom/sonymobile/keyguard/plugin/docomoclock/DocomoClockContainer;)V

    return-void
.end method
