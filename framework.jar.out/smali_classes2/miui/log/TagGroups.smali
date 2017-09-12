.class public final Lmiui/log/TagGroups;
.super Ljava/lang/Object;
.source "TagGroups.java"


# static fields
.field public static final TAGGROUP_BROADCAST:Ljava/lang/String; = "Broadcast"

.field public static final TagGroupBroadcast:Lmiui/log/TagGroup;

.field private static final allTagGroups:[Lmiui/log/TagGroup;

.field private static final tagGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/TagGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 14
    new-instance v4, Lmiui/log/TagGroup;

    const-string v5, "Broadcast"

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "SendBroadcast"

    aput-object v7, v6, v8

    invoke-direct {v4, v5, v6}, Lmiui/log/TagGroup;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v4, Lmiui/log/TagGroups;->TagGroupBroadcast:Lmiui/log/TagGroup;

    .line 18
    new-array v4, v9, [Lmiui/log/TagGroup;

    sget-object v5, Lmiui/log/TagGroups;->TagGroupBroadcast:Lmiui/log/TagGroup;

    aput-object v5, v4, v8

    sput-object v4, Lmiui/log/TagGroups;->allTagGroups:[Lmiui/log/TagGroup;

    .line 21
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    .line 24
    sget-object v0, Lmiui/log/TagGroups;->allTagGroups:[Lmiui/log/TagGroup;

    .local v0, "arr$":[Lmiui/log/TagGroup;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 25
    .local v3, "tagGroup":Lmiui/log/TagGroup;
    sget-object v4, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    iget-object v5, v3, Lmiui/log/TagGroup;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    .end local v3    # "tagGroup":Lmiui/log/TagGroup;
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lmiui/log/TagGroup;
    .locals 1
    .param p0, "groupName"    # Ljava/lang/String;

    .prologue
    .line 30
    sget-object v0, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/TagGroup;

    return-object v0
.end method

.method public static isOn(Ljava/lang/String;)Z
    .locals 2
    .param p0, "groupName"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-object v1, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/TagGroup;

    .line 35
    .local v0, "group":Lmiui/log/TagGroup;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lmiui/log/TagGroup;->isOn()Z

    move-result v1

    goto :goto_0
.end method

.method public static switchOff(Ljava/lang/String;)V
    .locals 2
    .param p0, "groupName"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v1, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/TagGroup;

    .line 47
    .local v0, "group":Lmiui/log/TagGroup;
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lmiui/log/TagGroup;->switchOff()V

    .line 50
    :cond_0
    return-void
.end method

.method public static switchOn(Ljava/lang/String;)V
    .locals 2
    .param p0, "groupName"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-object v1, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/TagGroup;

    .line 40
    .local v0, "group":Lmiui/log/TagGroup;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lmiui/log/TagGroup;->switchOn()V

    .line 43
    :cond_0
    return-void
.end method
