.class public Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;
.super Landroid/content/AsyncTaskLoader;
.source "AppOpsCategory.java"


# instance fields
.field FA:Lcom/android/vendorsettings/applications/AppOpsCategory$PackageIntentReceiver;

.field final Fv:Lcom/android/vendorsettings/applications/AppOpsState;

.field final Fy:Lcom/android/vendorsettings/applications/AppOpsCategory$InterestingConfigChanges;

.field final Fz:Lcom/android/vendorsettings/applications/AppOpsState$OpsTemplate;

.field mApps:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/vendorsettings/applications/AppOpsState;Lcom/android/vendorsettings/applications/AppOpsState$OpsTemplate;)V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 117
    new-instance v0, Lcom/android/vendorsettings/applications/AppOpsCategory$InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/vendorsettings/applications/AppOpsCategory$InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->Fy:Lcom/android/vendorsettings/applications/AppOpsCategory$InterestingConfigChanges;

    .line 126
    iput-object p2, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->Fv:Lcom/android/vendorsettings/applications/AppOpsState;

    .line 127
    iput-object p3, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->Fz:Lcom/android/vendorsettings/applications/AppOpsState$OpsTemplate;

    .line 128
    return-void
.end method


# virtual methods
.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 116
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->t(Ljava/util/List;)V

    return-void
.end method

.method public jI()Ljava/util/List;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->Fv:Lcom/android/vendorsettings/applications/AppOpsState;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->Fz:Lcom/android/vendorsettings/applications/AppOpsState$OpsTemplate;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/AppOpsState;->a(Lcom/android/vendorsettings/applications/AppOpsState$OpsTemplate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->jI()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 116
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->u(Ljava/util/List;)V

    return-void
.end method

.method protected onReset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 220
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->onStopLoading()V

    .line 224
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->v(Ljava/util/List;)V

    .line 226
    iput-object v2, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->FA:Lcom/android/vendorsettings/applications/AppOpsCategory$PackageIntentReceiver;

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->FA:Lcom/android/vendorsettings/applications/AppOpsCategory$PackageIntentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 232
    iput-object v2, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->FA:Lcom/android/vendorsettings/applications/AppOpsCategory$PackageIntentReceiver;

    .line 234
    :cond_1
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->onContentChanged()V

    .line 172
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->t(Ljava/util/List;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->FA:Lcom/android/vendorsettings/applications/AppOpsCategory$PackageIntentReceiver;

    if-nez v0, :cond_1

    .line 180
    new-instance v0, Lcom/android/vendorsettings/applications/AppOpsCategory$PackageIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/applications/AppOpsCategory$PackageIntentReceiver;-><init>(Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->FA:Lcom/android/vendorsettings/applications/AppOpsCategory$PackageIntentReceiver;

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->Fy:Lcom/android/vendorsettings/applications/AppOpsCategory$InterestingConfigChanges;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/AppOpsCategory$InterestingConfigChanges;->e(Landroid/content/res/Resources;)Z

    move-result v0

    .line 187
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    .line 190
    :cond_2
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->forceLoad()V

    .line 192
    :cond_3
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->cancelLoad()Z

    .line 200
    return-void
.end method

.method public t(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->v(Ljava/util/List;)V

    .line 148
    :cond_0
    iput-object p1, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    .line 150
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 159
    :cond_1
    if-eqz p1, :cond_2

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->v(Ljava/util/List;)V

    .line 162
    :cond_2
    return-void
.end method

.method public u(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListLoader;->v(Ljava/util/List;)V

    .line 211
    return-void
.end method

.method protected v(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 243
    return-void
.end method
