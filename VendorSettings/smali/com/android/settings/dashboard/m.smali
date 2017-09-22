.class Lcom/android/settings/dashboard/m;
.super Landroid/os/AsyncTask;
.source "SearchResultsSummary.java"


# instance fields
.field final synthetic UZ:Lcom/android/settings/dashboard/e;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/e;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings/dashboard/m;->UZ:Lcom/android/settings/dashboard/e;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/e;Lcom/android/settings/dashboard/f;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/m;-><init>(Lcom/android/settings/dashboard/e;)V

    return-void
.end method


# virtual methods
.method protected c(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/settings/dashboard/m;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/android/settings/dashboard/m;->UZ:Lcom/android/settings/dashboard/e;

    invoke-static {v0, p1}, Lcom/android/settings/dashboard/e;->b(Lcom/android/settings/dashboard/e;Landroid/database/Cursor;)V

    .line 109
    iget-object v1, p0, Lcom/android/settings/dashboard/m;->UZ:Lcom/android/settings/dashboard/e;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/settings/dashboard/e;->b(Lcom/android/settings/dashboard/e;Z)V

    .line 113
    :cond_0
    :goto_1
    return-void

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 110
    :cond_2
    if-eqz p1, :cond_0

    .line 111
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/m;->e([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected varargs e([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/dashboard/m;->UZ:Lcom/android/settings/dashboard/e;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/e;->cf(Landroid/content/Context;)Lcom/android/settings/search/e;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/settings/search/e;->br(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 99
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/m;->c(Landroid/database/Cursor;)V

    return-void
.end method
