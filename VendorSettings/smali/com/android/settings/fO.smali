.class Lcom/android/vendorsettings/fO;
.super Lmiui/os/AsyncTaskWithProgress;
.source "NotificationAppListSettings.java"


# instance fields
.field final synthetic vg:Lcom/android/vendorsettings/NotificationAppListSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/NotificationAppListSettings;Landroid/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/vendorsettings/fO;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-direct {p0, p2}, Lmiui/os/AsyncTaskWithProgress;-><init>(Landroid/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/fO;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/vendorsettings/fO;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/NotificationAppListSettings;->b(Lcom/android/vendorsettings/NotificationAppListSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 190
    iget-object v0, p0, Lcom/android/vendorsettings/fO;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/NotificationAppListSettings;->c(Lcom/android/vendorsettings/NotificationAppListSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    iget-object v1, p0, Lcom/android/vendorsettings/fO;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/NotificationAppListSettings;->f(Lcom/android/vendorsettings/NotificationAppListSettings;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 194
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 195
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

    .line 196
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 197
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 198
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 199
    iget-object v4, p0, Lcom/android/vendorsettings/fO;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-static {v4}, Lcom/android/vendorsettings/NotificationAppListSettings;->d(Lcom/android/vendorsettings/NotificationAppListSettings;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Lmiui/util/NotificationFilterHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v4

    .line 200
    new-instance v5, Lcom/android/vendorsettings/fU;

    iget-object v6, p0, Lcom/android/vendorsettings/fO;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v5, v6, v0, v4}, Lcom/android/vendorsettings/fU;-><init>(Lcom/android/vendorsettings/NotificationAppListSettings;Landroid/content/pm/ApplicationInfo;I)V

    .line 201
    const/4 v0, 0x3

    if-ne v4, v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/vendorsettings/fO;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/NotificationAppListSettings;->b(Lcom/android/vendorsettings/NotificationAppListSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/fO;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/NotificationAppListSettings;->c(Lcom/android/vendorsettings/NotificationAppListSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 210
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 145
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/fO;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 149
    invoke-super {p0, p1}, Lmiui/os/AsyncTaskWithProgress;->onPostExecute(Ljava/lang/Object;)V

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    iget-object v1, p0, Lcom/android/vendorsettings/fO;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/NotificationAppListSettings;->b(Lcom/android/vendorsettings/NotificationAppListSettings;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/vendorsettings/fP;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/fP;-><init>(Lcom/android/vendorsettings/fO;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 159
    iget-object v1, p0, Lcom/android/vendorsettings/fO;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/NotificationAppListSettings;->c(Lcom/android/vendorsettings/NotificationAppListSettings;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/vendorsettings/fQ;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/fQ;-><init>(Lcom/android/vendorsettings/fO;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 168
    iget-object v1, p0, Lcom/android/vendorsettings/fO;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/NotificationAppListSettings;->b(Lcom/android/vendorsettings/NotificationAppListSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 169
    new-instance v1, Lcom/android/vendorsettings/fU;

    iget-object v2, p0, Lcom/android/vendorsettings/fO;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    iget-object v3, p0, Lcom/android/vendorsettings/fO;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-static {v3}, Lcom/android/vendorsettings/NotificationAppListSettings;->d(Lcom/android/vendorsettings/NotificationAppListSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f110000

    iget-object v5, p0, Lcom/android/vendorsettings/fO;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-static {v5}, Lcom/android/vendorsettings/NotificationAppListSettings;->b(Lcom/android/vendorsettings/NotificationAppListSettings;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/vendorsettings/fO;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-static {v7}, Lcom/android/vendorsettings/NotificationAppListSettings;->b(Lcom/android/vendorsettings/NotificationAppListSettings;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/vendorsettings/fU;-><init>(Lcom/android/vendorsettings/NotificationAppListSettings;Ljava/lang/String;)V

    .line 172
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v1, p0, Lcom/android/vendorsettings/fO;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/NotificationAppListSettings;->b(Lcom/android/vendorsettings/NotificationAppListSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/fO;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/NotificationAppListSettings;->c(Lcom/android/vendorsettings/NotificationAppListSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 176
    new-instance v1, Lcom/android/vendorsettings/fU;

    iget-object v2, p0, Lcom/android/vendorsettings/fO;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    iget-object v3, p0, Lcom/android/vendorsettings/fO;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-static {v3}, Lcom/android/vendorsettings/NotificationAppListSettings;->d(Lcom/android/vendorsettings/NotificationAppListSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110001

    iget-object v5, p0, Lcom/android/vendorsettings/fO;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-static {v5}, Lcom/android/vendorsettings/NotificationAppListSettings;->c(Lcom/android/vendorsettings/NotificationAppListSettings;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/vendorsettings/fO;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-static {v7}, Lcom/android/vendorsettings/NotificationAppListSettings;->c(Lcom/android/vendorsettings/NotificationAppListSettings;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/vendorsettings/fU;-><init>(Lcom/android/vendorsettings/NotificationAppListSettings;Ljava/lang/String;)V

    .line 179
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v1, p0, Lcom/android/vendorsettings/fO;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/NotificationAppListSettings;->c(Lcom/android/vendorsettings/NotificationAppListSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/fO;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/NotificationAppListSettings;->e(Lcom/android/vendorsettings/NotificationAppListSettings;)Lcom/android/vendorsettings/fR;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/fR;->setItems(Ljava/util/List;)V

    .line 184
    iget-object v0, p0, Lcom/android/vendorsettings/fO;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/NotificationAppListSettings;->e(Lcom/android/vendorsettings/NotificationAppListSettings;)Lcom/android/vendorsettings/fR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vendorsettings/fR;->notifyDataSetChanged()V

    .line 185
    return-void
.end method
