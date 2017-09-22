.class Lcom/android/vendorsettings/as;
.super Landroid/os/AsyncTask;
.source "ChildrenModeSettings.java"


# instance fields
.field final synthetic dl:Lcom/android/vendorsettings/ChildrenModeSettings;

.field final synthetic dm:Ljava/util/List;

.field final synthetic dn:Ljava/util/ArrayList;

.field final synthetic do:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/ChildrenModeSettings;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/vendorsettings/as;->dl:Lcom/android/vendorsettings/ChildrenModeSettings;

    iput-object p2, p0, Lcom/android/vendorsettings/as;->dm:Ljava/util/List;

    iput-object p3, p0, Lcom/android/vendorsettings/as;->dn:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/vendorsettings/as;->do:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/as;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/vendorsettings/as;->dm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 148
    if-eqz v0, :cond_0

    .line 152
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 153
    iget-object v2, p0, Lcom/android/vendorsettings/as;->dl:Lcom/android/vendorsettings/ChildrenModeSettings;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/vendorsettings/ChildrenModeSettings;->a(Lcom/android/vendorsettings/ChildrenModeSettings;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/vendorsettings/ChildrenModeSettings;->o:Ljava/util/HashSet;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.thememanager"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/vendorsettings/as;->dl:Lcom/android/vendorsettings/ChildrenModeSettings;

    invoke-virtual {v2}, Lcom/android/vendorsettings/ChildrenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/vendorsettings/as;->dl:Lcom/android/vendorsettings/ChildrenModeSettings;

    invoke-virtual {v2}, Lcom/android/vendorsettings/ChildrenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lmiui/theme/ThemeManagerHelper;->needDisableTheme(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    :cond_1
    iget-object v2, p0, Lcom/android/vendorsettings/as;->dl:Lcom/android/vendorsettings/ChildrenModeSettings;

    invoke-static {v2}, Lcom/android/vendorsettings/ChildrenModeSettings;->c(Lcom/android/vendorsettings/ChildrenModeSettings;)Lmiui/security/SecurityManager;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmiui/security/SecurityManager;->getApplicationChildrenControlEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    iget-object v2, p0, Lcom/android/vendorsettings/as;->dn:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    :cond_2
    iget-object v2, p0, Lcom/android/vendorsettings/as;->do:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/as;->dl:Lcom/android/vendorsettings/ChildrenModeSettings;

    iget-object v1, p0, Lcom/android/vendorsettings/as;->dn:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/vendorsettings/ChildrenModeSettings;->a(Lcom/android/vendorsettings/ChildrenModeSettings;Ljava/util/ArrayList;Z)V

    .line 170
    iget-object v0, p0, Lcom/android/vendorsettings/as;->dl:Lcom/android/vendorsettings/ChildrenModeSettings;

    iget-object v1, p0, Lcom/android/vendorsettings/as;->do:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/vendorsettings/ChildrenModeSettings;->a(Lcom/android/vendorsettings/ChildrenModeSettings;Ljava/util/ArrayList;Z)V

    .line 171
    const/4 v0, 0x0

    return-object v0
.end method
