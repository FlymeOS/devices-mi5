.class Lcom/android/vendorsettings/ap;
.super Landroid/database/ContentObserver;
.source "CarrierCustomEditFragment.java"


# instance fields
.field final synthetic cY:I

.field final synthetic cZ:Lcom/android/vendorsettings/CarrierCustomEditFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/CarrierCustomEditFragment;Landroid/os/Handler;I)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/vendorsettings/ap;->cZ:Lcom/android/vendorsettings/CarrierCustomEditFragment;

    iput p3, p0, Lcom/android/vendorsettings/ap;->cY:I

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/vendorsettings/ap;->cZ:Lcom/android/vendorsettings/CarrierCustomEditFragment;

    iget-object v0, v0, Lcom/android/vendorsettings/CarrierCustomEditFragment;->cU:[Ljava/lang/String;

    iget v1, p0, Lcom/android/vendorsettings/ap;->cY:I

    iget-object v2, p0, Lcom/android/vendorsettings/ap;->cZ:Lcom/android/vendorsettings/CarrierCustomEditFragment;

    invoke-virtual {v2}, Lcom/android/vendorsettings/CarrierCustomEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status_bar_real_carrier"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/vendorsettings/ap;->cY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 106
    iget-object v0, p0, Lcom/android/vendorsettings/ap;->cZ:Lcom/android/vendorsettings/CarrierCustomEditFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/CarrierCustomEditFragment;->a(Lcom/android/vendorsettings/CarrierCustomEditFragment;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/vendorsettings/ap;->cY:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/vendorsettings/ap;->cZ:Lcom/android/vendorsettings/CarrierCustomEditFragment;

    iget-object v1, v1, Lcom/android/vendorsettings/CarrierCustomEditFragment;->cU:[Ljava/lang/String;

    iget v2, p0, Lcom/android/vendorsettings/ap;->cY:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method
