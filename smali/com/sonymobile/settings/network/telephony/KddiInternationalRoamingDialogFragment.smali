.class public Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "KddiInternationalRoamingDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment$KddiInternationalRoamingDialogListener;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment$KddiInternationalRoamingDialogListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static newInstance(I)Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment;
    .locals 3

    .line 50
    new-instance v0, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment;

    invoke-direct {v0}, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment;-><init>()V

    .line 52
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MESSAGE_TAG"

    .line 53
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment$KddiInternationalRoamingDialogListener;)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7d1

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 92
    sget-boolean p1, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment;->DBG:Z

    if-eqz p1, :cond_0

    const-string p1, "InternationalRoamingDialogFragment"

    const-string v0, "onClick:"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 95
    iget-object p1, p0, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment$KddiInternationalRoamingDialogListener;

    .line 96
    invoke-interface {p2, p0}, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment$KddiInternationalRoamingDialogListener;->onPositiveButtonClick(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "MESSAGE_TAG"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 75
    sget-boolean v0, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog:messageNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InternationalRoamingDialogFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x65

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f12093e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    :goto_0
    const p1, 0x1010355

    .line 85
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x1040013

    .line 86
    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 87
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 103
    sget-boolean p1, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment;->DBG:Z

    if-eqz p1, :cond_0

    const-string p1, "InternationalRoamingDialogFragment"

    const-string v0, "onDismiss:"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment$KddiInternationalRoamingDialogListener;

    .line 106
    invoke-interface {v0, p0}, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment$KddiInternationalRoamingDialogListener;->onDialogCancel(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    :cond_1
    return-void
.end method
