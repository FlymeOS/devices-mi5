.class Lcom/android/settings/M;
.super Ljava/lang/Object;
.source "ApplicationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic bw:Lcom/android/settings/ApplicationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ApplicationSettings;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/M;->bw:Lcom/android/settings/ApplicationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 82
    check-cast p2, Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/android/settings/M;->bw:Lcom/android/settings/ApplicationSettings;

    invoke-virtual {v0, p2}, Lcom/android/settings/ApplicationSettings;->k(Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    return v0
.end method
