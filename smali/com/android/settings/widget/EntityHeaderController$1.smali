.class Lcom/android/settings/widget/EntityHeaderController$1;
.super Ljava/lang/Object;
.source "EntityHeaderController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/EntityHeaderController;->bindAppInfoLink(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/EntityHeaderController;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/EntityHeaderController;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController$1;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 296
    const-class v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p1, p0, Lcom/android/settings/widget/EntityHeaderController$1;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    .line 298
    invoke-static {p1}, Lcom/android/settings/widget/EntityHeaderController;->access$000(Lcom/android/settings/widget/EntityHeaderController;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/android/settings/widget/EntityHeaderController$1;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    invoke-static {p1}, Lcom/android/settings/widget/EntityHeaderController;->access$100(Lcom/android/settings/widget/EntityHeaderController;)I

    move-result v3

    iget-object p1, p0, Lcom/android/settings/widget/EntityHeaderController$1;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    invoke-static {p1}, Lcom/android/settings/widget/EntityHeaderController;->access$200(Lcom/android/settings/widget/EntityHeaderController;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    iget-object p0, p0, Lcom/android/settings/widget/EntityHeaderController$1;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    .line 299
    invoke-static {p0}, Lcom/android/settings/widget/EntityHeaderController;->access$300(Lcom/android/settings/widget/EntityHeaderController;)I

    move-result v6

    const v1, 0x7f120178

    const/4 v5, 0x0

    .line 296
    invoke-static/range {v0 .. v6}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroidx/fragment/app/Fragment;II)V

    return-void
.end method
