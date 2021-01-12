.class Lcom/sonymobile/settings/preference/util/TwoStateUtil$2;
.super Landroid/database/ContentObserver;
.source "TwoStateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/preference/util/TwoStateUtil;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/preference/util/TwoStateUtil;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/preference/util/TwoStateUtil;Landroid/os/Handler;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil$2;->this$0:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 187
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-nez p1, :cond_0

    .line 193
    iget-object p0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil$2;->this$0:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-static {p0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->access$200(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)V

    :cond_0
    return-void
.end method
