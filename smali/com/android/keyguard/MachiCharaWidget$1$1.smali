.class Lcom/android/keyguard/MachiCharaWidget$1$1;
.super Ljava/lang/Object;
.source "MachiCharaWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MachiCharaWidget$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/MachiCharaWidget$1;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MachiCharaWidget$1;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/keyguard/MachiCharaWidget$1$1;->this$1:Lcom/android/keyguard/MachiCharaWidget$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/android/keyguard/MachiCharaWidget$1$1;->this$1:Lcom/android/keyguard/MachiCharaWidget$1;

    iget-object p0, p0, Lcom/android/keyguard/MachiCharaWidget$1;->this$0:Lcom/android/keyguard/MachiCharaWidget;

    invoke-static {p0}, Lcom/android/keyguard/MachiCharaWidget;->access$100(Lcom/android/keyguard/MachiCharaWidget;)V

    return-void
.end method
