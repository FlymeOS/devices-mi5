.class Lcom/android/settings/applications/DefaultEmergencyPreference$1;
.super Landroid/os/AsyncTask;
.source "DefaultEmergencyPreference.java"


# instance fields
.field final synthetic Ii:Lcom/android/settings/applications/DefaultEmergencyPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/DefaultEmergencyPreference;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings/applications/DefaultEmergencyPreference$1;->Ii:Lcom/android/settings/applications/DefaultEmergencyPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Ljava/util/Set;)V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/applications/DefaultEmergencyPreference$1;->Ii:Lcom/android/settings/applications/DefaultEmergencyPreference;

    invoke-static {v0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->b(Lcom/android/settings/applications/DefaultEmergencyPreference;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_assistance_application"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/android/settings/applications/DefaultEmergencyPreference$1;->Ii:Lcom/android/settings/applications/DefaultEmergencyPreference;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/applications/DefaultEmergencyPreference;->a([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method

.method protected d([Ljava/lang/Void;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/DefaultEmergencyPreference$1;->Ii:Lcom/android/settings/applications/DefaultEmergencyPreference;

    invoke-static {v0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->a(Lcom/android/settings/applications/DefaultEmergencyPreference;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/DefaultEmergencyPreference$1;->d([Ljava/lang/Void;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 73
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/DefaultEmergencyPreference$1;->b(Ljava/util/Set;)V

    return-void
.end method
