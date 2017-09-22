.class public Lcom/android/vendorsettings/CryptKeeperConfirm;
.super Lcom/android/vendorsettings/InstrumentedFragment;
.source "CryptKeeperConfirm.java"


# instance fields
.field private gC:Landroid/view/View;

.field private gD:Landroid/widget/Button;

.field private gE:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/vendorsettings/InstrumentedFragment;-><init>()V

    .line 100
    new-instance v0, Lcom/android/vendorsettings/bm;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bm;-><init>(Lcom/android/vendorsettings/CryptKeeperConfirm;)V

    iput-object v0, p0, Lcom/android/vendorsettings/CryptKeeperConfirm;->gE:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private bm()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeperConfirm;->gC:Landroid/view/View;

    const v1, 0x7f130088

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/vendorsettings/CryptKeeperConfirm;->gD:Landroid/widget/Button;

    .line 153
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeperConfirm;->gD:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/vendorsettings/CryptKeeperConfirm;->gE:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 159
    const v0, 0x7f040041

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/CryptKeeperConfirm;->gC:Landroid/view/View;

    .line 160
    invoke-direct {p0}, Lcom/android/vendorsettings/CryptKeeperConfirm;->bm()V

    .line 161
    iget-object v0, p0, Lcom/android/vendorsettings/CryptKeeperConfirm;->gC:Landroid/view/View;

    return-object v0
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x21

    return v0
.end method
