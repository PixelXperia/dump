.class public final synthetic Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$EL--xLq17J-BDlmCmJk3kWI-8E8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

.field private final synthetic f$1:Landroid/widget/ImageButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/widget/ImageButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$EL--xLq17J-BDlmCmJk3kWI-8E8;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iput-object p2, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$EL--xLq17J-BDlmCmJk3kWI-8E8;->f$1:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$EL--xLq17J-BDlmCmJk3kWI-8E8;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$EL--xLq17J-BDlmCmJk3kWI-8E8;->f$1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$getSinglePressFor$13$VolumeDialogImpl(Landroid/widget/ImageButton;)V

    return-void
.end method
