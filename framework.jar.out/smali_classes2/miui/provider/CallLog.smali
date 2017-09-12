.class public Lmiui/provider/CallLog;
.super Ljava/lang/Object;
.source "CallLog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCall(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "insertUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "addForAllUsers"    # Z

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 25
    .local v3, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 26
    .local v4, "result":Landroid/net/Uri;
    if-eqz p3, :cond_1

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 27
    const-string v9, "user"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 28
    .local v7, "userManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 29
    .local v1, "currentUserId":I
    const-string v9, "CallLog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add Call get calling user id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v8

    .line 33
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 34
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 35
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 36
    .local v6, "user":Landroid/content/pm/UserInfo;
    invoke-static {v7, v6}, Lmiui/provider/CallLog;->canInsertCalllog(Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 37
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1, v9}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v3, v9, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 38
    .local v5, "uri":Landroid/net/Uri;
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    if-ne v9, v1, :cond_0

    .line 39
    move-object v4, v5

    .line 34
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "count":I
    .end local v1    # "currentUserId":I
    .end local v2    # "i":I
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "userManager":Landroid/os/UserManager;
    .end local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    invoke-virtual {v3, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 47
    :cond_2
    return-object v4
.end method

.method private static canInsertCalllog(Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Z
    .locals 3
    .param p0, "userManager"    # Landroid/os/UserManager;
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v1, 0x0

    .line 51
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 56
    .local v0, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "no_outgoing_calls"

    invoke-virtual {p0, v2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
