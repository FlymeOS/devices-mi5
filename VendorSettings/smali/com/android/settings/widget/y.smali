.class Lcom/android/vendorsettings/widget/y;
.super Landroid/os/AsyncTask;
.source "SettingsAppWidgetProvider.java"


# instance fields
.field final synthetic azp:Lcom/android/vendorsettings/widget/x;

.field final synthetic val$desiredState:Z


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/widget/x;Z)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/vendorsettings/widget/y;->azp:Lcom/android/vendorsettings/widget/x;

    iput-boolean p2, p0, Lcom/android/vendorsettings/widget/y;->val$desiredState:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 471
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/widget/y;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 474
    invoke-static {}, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->wH()Lcom/android/b/b/Q;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/vendorsettings/widget/y;->val$desiredState:Z

    invoke-virtual {v0, v1}, Lcom/android/b/b/Q;->bS(Z)V

    .line 475
    const/4 v0, 0x0

    return-object v0
.end method
