.class Lcom/android/vendorsettings/fj;
.super Landroid/os/AsyncTask;
.source "MiuiSecurityTrustedCredentials.java"


# instance fields
.field mList:Landroid/widget/ListView;

.field sP:Lmiui/widget/ProgressBar;

.field final synthetic sQ:Lcom/android/vendorsettings/fi;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/fi;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/vendorsettings/fj;->sQ:Lcom/android/vendorsettings/fi;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 257
    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/android/vendorsettings/fj;->mList:Landroid/widget/ListView;

    .line 258
    return-void
.end method


# virtual methods
.method protected varargs b([Ljava/lang/Void;)Ljava/util/List;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 265
    iget-object v0, p0, Lcom/android/vendorsettings/fj;->sQ:Lcom/android/vendorsettings/fi;

    invoke-static {v0}, Lcom/android/vendorsettings/fi;->e(Lcom/android/vendorsettings/fi;)Lcom/android/vendorsettings/MiuiSecurityTrustedCredentials$Tab;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/fj;->sQ:Lcom/android/vendorsettings/fi;

    invoke-static {v1}, Lcom/android/vendorsettings/fi;->d(Lcom/android/vendorsettings/fi;)Lcom/android/org/conscrypt/TrustedCertificateStore;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/MiuiSecurityTrustedCredentials$Tab;->a(Lcom/android/vendorsettings/MiuiSecurityTrustedCredentials$Tab;Lcom/android/org/conscrypt/TrustedCertificateStore;)Ljava/util/Set;

    move-result-object v0

    .line 266
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v9

    .line 268
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 269
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v7, v8

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/android/vendorsettings/fj;->sQ:Lcom/android/vendorsettings/fi;

    invoke-static {v0}, Lcom/android/vendorsettings/fi;->d(Lcom/android/vendorsettings/fi;)Lcom/android/org/conscrypt/TrustedCertificateStore;

    move-result-object v0

    invoke-virtual {v0, v4, v12}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 271
    new-instance v0, Lcom/android/vendorsettings/fh;

    iget-object v1, p0, Lcom/android/vendorsettings/fj;->sQ:Lcom/android/vendorsettings/fi;

    invoke-static {v1}, Lcom/android/vendorsettings/fi;->d(Lcom/android/vendorsettings/fi;)Lcom/android/org/conscrypt/TrustedCertificateStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/fj;->sQ:Lcom/android/vendorsettings/fi;

    iget-object v3, p0, Lcom/android/vendorsettings/fj;->sQ:Lcom/android/vendorsettings/fi;

    invoke-static {v3}, Lcom/android/vendorsettings/fi;->e(Lcom/android/vendorsettings/fi;)Lcom/android/vendorsettings/MiuiSecurityTrustedCredentials$Tab;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/vendorsettings/fh;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/vendorsettings/fi;Lcom/android/vendorsettings/MiuiSecurityTrustedCredentials$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;Lcom/android/vendorsettings/ff;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Integer;

    add-int/lit8 v0, v7, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/fj;->publishProgress([Ljava/lang/Object;)V

    move v7, v0

    .line 277
    goto :goto_0

    .line 278
    :cond_0
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 279
    return-object v10
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 252
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/fj;->b([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected j(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/vendorsettings/fj;->sQ:Lcom/android/vendorsettings/fi;

    invoke-static {v0}, Lcom/android/vendorsettings/fi;->a(Lcom/android/vendorsettings/fi;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 291
    iget-object v0, p0, Lcom/android/vendorsettings/fj;->sQ:Lcom/android/vendorsettings/fi;

    invoke-static {v0}, Lcom/android/vendorsettings/fi;->a(Lcom/android/vendorsettings/fi;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 292
    iget-object v0, p0, Lcom/android/vendorsettings/fj;->sQ:Lcom/android/vendorsettings/fi;

    invoke-virtual {v0}, Lcom/android/vendorsettings/fi;->notifyDataSetChanged()V

    .line 293
    invoke-static {}, Lcom/android/vendorsettings/fi;->fR()Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/fj;->sQ:Lcom/android/vendorsettings/fi;

    invoke-static {v1}, Lcom/android/vendorsettings/fi;->e(Lcom/android/vendorsettings/fi;)Lcom/android/vendorsettings/MiuiSecurityTrustedCredentials$Tab;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vendorsettings/MiuiSecurityTrustedCredentials$Tab;->a(Lcom/android/vendorsettings/MiuiSecurityTrustedCredentials$Tab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v0, p0, Lcom/android/vendorsettings/fj;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/vendorsettings/fj;->sP:Lmiui/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 295
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 252
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/fj;->j(Ljava/util/List;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 261
    new-instance v0, Lmiui/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/vendorsettings/fj;->sQ:Lcom/android/vendorsettings/fi;

    invoke-static {v1}, Lcom/android/vendorsettings/fi;->c(Lcom/android/vendorsettings/fi;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, v1, v2, v3}, Lmiui/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/vendorsettings/fj;->sP:Lmiui/widget/ProgressBar;

    .line 262
    iget-object v0, p0, Lcom/android/vendorsettings/fj;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/vendorsettings/fj;->sP:Lmiui/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 263
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 282
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 283
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 284
    iget-object v2, p0, Lcom/android/vendorsettings/fj;->sP:Lmiui/widget/ProgressBar;

    invoke-virtual {v2}, Lmiui/widget/ProgressBar;->getMax()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 285
    iget-object v2, p0, Lcom/android/vendorsettings/fj;->sP:Lmiui/widget/ProgressBar;

    invoke-virtual {v2, v1}, Lmiui/widget/ProgressBar;->setMax(I)V

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/fj;->sP:Lmiui/widget/ProgressBar;

    invoke-virtual {v1, v0}, Lmiui/widget/ProgressBar;->setProgress(I)V

    .line 288
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 252
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/fj;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
