.class final Lcom/android/setupwizardlib/i;
.super Ljava/lang/Object;
.source "SetupWizardLayout.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 498
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/i;->s(Landroid/os/Parcel;)Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public ef(I)[Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;
    .locals 1

    .prologue
    .line 507
    new-array v0, p1, [Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 498
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/i;->ef(I)[Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public s(Landroid/os/Parcel;)Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;
    .locals 1

    .prologue
    .line 502
    new-instance v0, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;

    invoke-direct {v0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
