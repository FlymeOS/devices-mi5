.class Lcom/android/vendorsettings/applications/ApplicationsContainer$2$1;
.super Ljava/lang/Object;
.source "ApplicationsContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic HE:Lcom/android/vendorsettings/applications/ApplicationsContainer$2;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/applications/ApplicationsContainer$2;)V
    .locals 0

    .prologue
    .line 986
    iput-object p1, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer$2$1;->HE:Lcom/android/vendorsettings/applications/ApplicationsContainer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer$2$1;->HE:Lcom/android/vendorsettings/applications/ApplicationsContainer$2;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/ApplicationsContainer$2;->HB:Lcom/android/vendorsettings/applications/ApplicationsContainer;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->b(Lcom/android/vendorsettings/applications/ApplicationsContainer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 991
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer$2$1;->HE:Lcom/android/vendorsettings/applications/ApplicationsContainer$2;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/ApplicationsContainer$2;->HB:Lcom/android/vendorsettings/applications/ApplicationsContainer;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->c(Lcom/android/vendorsettings/applications/ApplicationsContainer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 992
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer$2$1;->HE:Lcom/android/vendorsettings/applications/ApplicationsContainer$2;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/ApplicationsContainer$2;->HB:Lcom/android/vendorsettings/applications/ApplicationsContainer;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->c(Lcom/android/vendorsettings/applications/ApplicationsContainer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    .line 993
    iget-object v2, v0, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;->HX:Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter;

    if-eqz v2, :cond_0

    .line 994
    iget-object v0, v0, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;->HX:Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter;->pause()V

    .line 991
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 997
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer$2$1;->HE:Lcom/android/vendorsettings/applications/ApplicationsContainer$2;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/ApplicationsContainer$2;->HB:Lcom/android/vendorsettings/applications/ApplicationsContainer;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->d(Lcom/android/vendorsettings/applications/ApplicationsContainer;)Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 998
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer$2$1;->HE:Lcom/android/vendorsettings/applications/ApplicationsContainer$2;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/ApplicationsContainer$2;->HB:Lcom/android/vendorsettings/applications/ApplicationsContainer;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->d(Lcom/android/vendorsettings/applications/ApplicationsContainer;)Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer$2$1;->HE:Lcom/android/vendorsettings/applications/ApplicationsContainer$2;

    iget-object v1, v1, Lcom/android/vendorsettings/applications/ApplicationsContainer$2;->HB:Lcom/android/vendorsettings/applications/ApplicationsContainer;

    invoke-static {v1}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->e(Lcom/android/vendorsettings/applications/ApplicationsContainer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;->resume(I)V

    .line 1001
    :cond_2
    return-void
.end method
