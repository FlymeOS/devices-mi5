.class public Lcom/android/vendorsettings/fingerprint/w;
.super Landroid/preference/Preference;
.source "FingerprintSettings.java"


# instance fields
.field private ack:Landroid/hardware/fingerprint/Fingerprint;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vendorsettings/fingerprint/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 686
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 681
    const v0, 0x101008e

    invoke-direct {p0, p1, p2, v0}, Lcom/android/vendorsettings/fingerprint/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 682
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 677
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/vendorsettings/fingerprint/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 678
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 674
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 675
    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Lcom/android/vendorsettings/fingerprint/w;->ack:Landroid/hardware/fingerprint/Fingerprint;

    .line 692
    return-void
.end method

.method public getFingerprint()Landroid/hardware/fingerprint/Fingerprint;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/w;->ack:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/w;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 700
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 701
    iput-object p1, p0, Lcom/android/vendorsettings/fingerprint/w;->mView:Landroid/view/View;

    .line 702
    return-void
.end method
