.class public Lcom/android/vendorsettings/applications/SystemAppSettings$LoadIconTask;
.super Landroid/os/AsyncTask;
.source "SystemAppSettings.java"


# instance fields
.field private Po:Ljava/util/HashMap;

.field final synthetic Pp:Lcom/android/vendorsettings/applications/SystemAppSettings;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/applications/SystemAppSettings;)V
    .locals 2

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/vendorsettings/applications/SystemAppSettings$LoadIconTask;->Pp:Lcom/android/vendorsettings/applications/SystemAppSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 140
    new-instance v0, Ljava/util/HashMap;

    # getter for: Lcom/android/vendorsettings/applications/SystemAppSettings;->Pl:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/vendorsettings/applications/SystemAppSettings;->access$000()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/SystemAppSettings$LoadIconTask;->Po:Ljava/util/HashMap;

    .line 141
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/SystemAppSettings$LoadIconTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/vendorsettings/applications/SystemAppSettings$LoadIconTask;->Po:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 146
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 148
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 149
    iget-object v2, p0, Lcom/android/vendorsettings/applications/SystemAppSettings$LoadIconTask;->Pp:Lcom/android/vendorsettings/applications/SystemAppSettings;

    invoke-static {v2}, Lcom/android/vendorsettings/applications/SystemAppSettings;->a(Lcom/android/vendorsettings/applications/SystemAppSettings;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/vendorsettings/applications/SystemAppSettings;->b(Landroid/content/Context;Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 151
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 136
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/SystemAppSettings$LoadIconTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/vendorsettings/applications/SystemAppSettings$LoadIconTask;->Po:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/SystemAppSettings;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 157
    return-void
.end method
