.class Lcom/android/vendorsettings/O;
.super Lmiui/os/AsyncTaskWithProgress;
.source "AutoDisableScreenButtonsAppListSettings.java"


# instance fields
.field final synthetic bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;Landroid/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/vendorsettings/O;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-direct {p0, p2}, Lmiui/os/AsyncTaskWithProgress;-><init>(Landroid/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 161
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/O;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object v1, p0, Lcom/android/vendorsettings/O;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->f(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 208
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 210
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 211
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 212
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 214
    iget-object v4, p0, Lcom/android/vendorsettings/O;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v4}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->d(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lmiui/util/AutoDisableScreenButtonsHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 215
    new-instance v5, Lcom/android/vendorsettings/V;

    iget-object v6, p0, Lcom/android/vendorsettings/O;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v5, v6, v0, v4}, Lcom/android/vendorsettings/V;-><init>(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;Landroid/content/pm/ApplicationInfo;I)V

    .line 216
    const/4 v0, 0x3

    if-ne v4, v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/vendorsettings/O;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->c(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/O;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->b(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 224
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 161
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/O;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 165
    invoke-super {p0, p1}, Lmiui/os/AsyncTaskWithProgress;->onPostExecute(Ljava/lang/Object;)V

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    iget-object v1, p0, Lcom/android/vendorsettings/O;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->b(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/vendorsettings/P;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/P;-><init>(Lcom/android/vendorsettings/O;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 175
    iget-object v1, p0, Lcom/android/vendorsettings/O;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->c(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/vendorsettings/Q;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/Q;-><init>(Lcom/android/vendorsettings/O;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 184
    iget-object v1, p0, Lcom/android/vendorsettings/O;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->b(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 185
    new-instance v1, Lcom/android/vendorsettings/V;

    iget-object v2, p0, Lcom/android/vendorsettings/O;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    iget-object v3, p0, Lcom/android/vendorsettings/O;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v3}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->d(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110018

    iget-object v5, p0, Lcom/android/vendorsettings/O;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v5}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->b(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/vendorsettings/O;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v7}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->b(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/vendorsettings/V;-><init>(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;Ljava/lang/String;)V

    .line 188
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v1, p0, Lcom/android/vendorsettings/O;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->b(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/O;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->c(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 192
    new-instance v1, Lcom/android/vendorsettings/V;

    iget-object v2, p0, Lcom/android/vendorsettings/O;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    iget-object v3, p0, Lcom/android/vendorsettings/O;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v3}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->d(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110019

    iget-object v5, p0, Lcom/android/vendorsettings/O;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v5}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->c(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/vendorsettings/O;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v7}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->c(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/vendorsettings/V;-><init>(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;Ljava/lang/String;)V

    .line 195
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v1, p0, Lcom/android/vendorsettings/O;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->c(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/O;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->e(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Lcom/android/vendorsettings/R;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/R;->setItems(Ljava/util/List;)V

    .line 200
    iget-object v0, p0, Lcom/android/vendorsettings/O;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->e(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Lcom/android/vendorsettings/R;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vendorsettings/R;->notifyDataSetChanged()V

    .line 201
    return-void
.end method
