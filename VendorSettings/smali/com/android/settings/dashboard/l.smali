.class Lcom/android/vendorsettings/dashboard/l;
.super Landroid/os/AsyncTask;
.source "SearchResultsSummary.java"


# instance fields
.field final synthetic UZ:Lcom/android/vendorsettings/dashboard/e;


# direct methods
.method private constructor <init>(Lcom/android/vendorsettings/dashboard/e;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/vendorsettings/dashboard/l;->UZ:Lcom/android/vendorsettings/dashboard/e;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/dashboard/e;Lcom/android/vendorsettings/dashboard/f;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/dashboard/l;-><init>(Lcom/android/vendorsettings/dashboard/e;)V

    return-void
.end method


# virtual methods
.method protected c(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/vendorsettings/dashboard/l;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/android/vendorsettings/dashboard/l;->UZ:Lcom/android/vendorsettings/dashboard/e;

    invoke-virtual {v0}, Lcom/android/vendorsettings/dashboard/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xe2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 88
    iget-object v0, p0, Lcom/android/vendorsettings/dashboard/l;->UZ:Lcom/android/vendorsettings/dashboard/e;

    invoke-static {v0, p1}, Lcom/android/vendorsettings/dashboard/e;->a(Lcom/android/vendorsettings/dashboard/e;Landroid/database/Cursor;)V

    .line 89
    iget-object v1, p0, Lcom/android/vendorsettings/dashboard/l;->UZ:Lcom/android/vendorsettings/dashboard/e;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/vendorsettings/dashboard/e;->a(Lcom/android/vendorsettings/dashboard/e;Z)V

    .line 93
    :cond_0
    :goto_1
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :cond_2
    if-eqz p1, :cond_0

    .line 91
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/dashboard/l;->e([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected varargs e([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/vendorsettings/dashboard/l;->UZ:Lcom/android/vendorsettings/dashboard/e;

    invoke-virtual {v0}, Lcom/android/vendorsettings/dashboard/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/search/e;->cf(Landroid/content/Context;)Lcom/android/vendorsettings/search/e;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/search/e;->bq(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 77
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/dashboard/l;->c(Landroid/database/Cursor;)V

    return-void
.end method
