.class Lcom/android/settings/fE;
.super Ljava/lang/Object;
.source "MiuiZonePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic uK:Lcom/android/settings/MiuiZonePicker;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiZonePicker;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/fE;->uK:Lcom/android/settings/MiuiZonePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/fE;->uK:Lcom/android/settings/MiuiZonePicker;

    invoke-virtual {v0}, Lcom/android/settings/MiuiZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 84
    return-void
.end method
