.class Lcom/android/vendorsettings/ep;
.super Lcom/android/vendorsettings/ah;
.source "MiuiDisplaySettings.java"


# instance fields
.field final synthetic qH:Lcom/android/vendorsettings/MiuiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/MiuiDisplaySettings;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/vendorsettings/ep;->qH:Lcom/android/vendorsettings/MiuiDisplaySettings;

    invoke-direct {p0}, Lcom/android/vendorsettings/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public l(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/vendorsettings/ep;->qH:Lcom/android/vendorsettings/MiuiDisplaySettings;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiDisplaySettings;->c(Lcom/android/vendorsettings/MiuiDisplaySettings;)Lmiui/preference/ValuePreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 163
    return-void
.end method
