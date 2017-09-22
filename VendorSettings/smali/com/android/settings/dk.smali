.class Lcom/android/vendorsettings/dk;
.super Ljava/lang/Object;
.source "HeadsetCalibrateFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic nq:Lcom/android/vendorsettings/HeadsetCalibrateFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/HeadsetCalibrateFragment;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/vendorsettings/dk;->nq:Lcom/android/vendorsettings/HeadsetCalibrateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 211
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/vendorsettings/dk;->nq:Lcom/android/vendorsettings/HeadsetCalibrateFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/HeadsetCalibrateFragment;->a(Lcom/android/vendorsettings/HeadsetCalibrateFragment;Z)Z

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/dk;->nq:Lcom/android/vendorsettings/HeadsetCalibrateFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/HeadsetCalibrateFragment;->finish()V

    .line 216
    return-void
.end method
