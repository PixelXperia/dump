.class Lcom/android/systemui/globalactions/GlobalActionsDialog$13;
.super Landroid/database/ContentObserver;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/os/Handler;)V
    .locals 0

    .line 1558
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$13;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1561
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$13;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2500(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-void
.end method
