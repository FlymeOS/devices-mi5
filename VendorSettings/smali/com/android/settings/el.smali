.class public Lcom/android/vendorsettings/el;
.super Landroid/os/AsyncTask;
.source "MiuiDeviceInfoSettings.java"


# instance fields
.field final synthetic qs:Lcom/android/vendorsettings/MiuiDeviceInfoSettings;

.field private qt:Ljava/lang/String;

.field private qu:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/MiuiDeviceInfoSettings;)V
    .locals 0

    .prologue
    .line 845
    iput-object p1, p0, Lcom/android/vendorsettings/el;->qs:Lcom/android/vendorsettings/MiuiDeviceInfoSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 845
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/el;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/vendorsettings/el;->qs:Lcom/android/vendorsettings/MiuiDeviceInfoSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiDeviceInfoSettings;->a(Lcom/android/vendorsettings/MiuiDeviceInfoSettings;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/el;->qt:Ljava/lang/String;

    .line 852
    iget-object v0, p0, Lcom/android/vendorsettings/el;->qs:Lcom/android/vendorsettings/MiuiDeviceInfoSettings;

    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/vendorsettings/MiuiDeviceInfoSettings;->a(Lcom/android/vendorsettings/MiuiDeviceInfoSettings;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/el;->qu:Ljava/lang/String;

    .line 853
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 845
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/el;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/vendorsettings/el;->qs:Lcom/android/vendorsettings/MiuiDeviceInfoSettings;

    const-string v1, "device_cpu"

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 859
    iget-object v1, p0, Lcom/android/vendorsettings/el;->qt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 861
    iget-object v0, p0, Lcom/android/vendorsettings/el;->qs:Lcom/android/vendorsettings/MiuiDeviceInfoSettings;

    const-string v1, "device_memory"

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 862
    iget-object v1, p0, Lcom/android/vendorsettings/el;->qu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 863
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 864
    return-void
.end method
