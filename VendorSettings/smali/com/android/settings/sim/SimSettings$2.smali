.class Lcom/android/settings/sim/SimSettings$2;
.super Landroid/telephony/PhoneStateListener;
.source "SimSettings.java"


# instance fields
.field final synthetic apW:Lcom/android/settings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$2;->apW:Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 222
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$2;->apW:Lcom/android/settings/sim/SimSettings;

    const-string v2, "sim_cellular_data"

    invoke-virtual {v1, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 223
    if-eqz v1, :cond_1

    .line 224
    const-string v2, "ril.cdma.inecmmode"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 226
    if-nez p1, :cond_0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 228
    :cond_1
    return-void
.end method
