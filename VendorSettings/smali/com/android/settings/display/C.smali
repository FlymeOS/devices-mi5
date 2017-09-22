.class Lcom/android/vendorsettings/display/C;
.super Lmiui/os/AsyncTaskWithProgress;
.source "PaperModeSetAppsFragment.java"


# instance fields
.field final synthetic Zq:Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;

.field private Zr:Ljava/util/List;

.field private Zs:Ljava/util/List;

.field final synthetic dm:Ljava/util/List;

.field private final n:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;Landroid/app/FragmentManager;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/vendorsettings/display/C;->Zq:Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;

    iput-object p3, p0, Lcom/android/vendorsettings/display/C;->dm:Ljava/util/List;

    invoke-direct {p0, p2}, Lmiui/os/AsyncTaskWithProgress;-><init>(Landroid/app/FragmentManager;)V

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/display/C;->Zr:Ljava/util/List;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/display/C;->Zs:Ljava/util/List;

    .line 174
    new-instance v0, Lcom/android/vendorsettings/display/D;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/display/D;-><init>(Lcom/android/vendorsettings/display/C;)V

    iput-object v0, p0, Lcom/android/vendorsettings/display/C;->n:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 146
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/display/C;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/vendorsettings/display/C;->Zr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 159
    iget-object v0, p0, Lcom/android/vendorsettings/display/C;->Zs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 160
    iget-object v0, p0, Lcom/android/vendorsettings/display/C;->dm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 161
    iget-object v1, p0, Lcom/android/vendorsettings/display/C;->Zq:Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->c(Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/vendorsettings/display/C;->Zq:Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->c(Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/android/vendorsettings/display/C;->Zr:Ljava/util/List;

    new-instance v3, Lcom/android/vendorsettings/display/E;

    iget-object v4, p0, Lcom/android/vendorsettings/display/C;->Zq:Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;

    iget-object v5, p0, Lcom/android/vendorsettings/display/C;->Zq:Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;

    invoke-static {v5}, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->d(Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/android/vendorsettings/display/E;-><init>(Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_1
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    :cond_2
    iget-object v1, p0, Lcom/android/vendorsettings/display/C;->Zs:Ljava/util/List;

    new-instance v3, Lcom/android/vendorsettings/display/E;

    iget-object v4, p0, Lcom/android/vendorsettings/display/C;->Zq:Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;

    iget-object v5, p0, Lcom/android/vendorsettings/display/C;->Zq:Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;

    invoke-static {v5}, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->d(Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/android/vendorsettings/display/E;-><init>(Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/display/C;->Zr:Ljava/util/List;

    iget-object v1, p0, Lcom/android/vendorsettings/display/C;->n:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 170
    iget-object v0, p0, Lcom/android/vendorsettings/display/C;->Zs:Ljava/util/List;

    iget-object v1, p0, Lcom/android/vendorsettings/display/C;->n:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 146
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/display/C;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 152
    invoke-super {p0, p1}, Lmiui/os/AsyncTaskWithProgress;->onPostExecute(Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/android/vendorsettings/display/C;->Zq:Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;

    iget-object v1, p0, Lcom/android/vendorsettings/display/C;->Zr:Ljava/util/List;

    iget-object v2, p0, Lcom/android/vendorsettings/display/C;->Zs:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->a(Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;Ljava/util/List;Ljava/util/List;)V

    .line 154
    return-void
.end method
