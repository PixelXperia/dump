.class Lcom/android/systemui/SystemUIApplication$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemUIApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SystemUIApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SystemUIApplication;


# direct methods
.method constructor <init>(Lcom/android/systemui/SystemUIApplication;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 79
    iget-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-static {p1}, Lcom/android/systemui/SystemUIApplication;->access$000(Lcom/android/systemui/SystemUIApplication;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    iget-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/systemui/SystemUIApplication;->access$002(Lcom/android/systemui/SystemUIApplication;Z)Z

    .line 84
    iget-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-static {p1}, Lcom/android/systemui/SystemUIApplication;->access$100(Lcom/android/systemui/SystemUIApplication;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-static {p1}, Lcom/android/systemui/SystemUIApplication;->access$200(Lcom/android/systemui/SystemUIApplication;)[Lcom/android/systemui/SystemUI;

    move-result-object p1

    array-length p1, p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-static {v0}, Lcom/android/systemui/SystemUIApplication;->access$200(Lcom/android/systemui/SystemUIApplication;)[Lcom/android/systemui/SystemUI;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/android/systemui/SystemUI;->onBootCompleted()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
