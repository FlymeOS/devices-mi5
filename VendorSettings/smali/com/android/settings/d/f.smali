.class public Lcom/android/settings/d/f;
.super Ljava/lang/Object;
.source "NetworkPolicyEditor.java"


# instance fields
.field private ahW:Ljava/util/ArrayList;

.field private gO:Landroid/net/NetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/net/NetworkPolicyManager;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/d/f;->ahW:Ljava/util/ArrayList;

    .line 52
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    iput-object v0, p0, Lcom/android/settings/d/f;->gO:Landroid/net/NetworkPolicyManager;

    .line 53
    return-void
.end method

.method private static d(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const-wide/16 v4, -0x1

    .line 133
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 134
    const/4 v2, -0x1

    .line 135
    const-string v3, "UTC"

    .line 136
    const/4 v12, 0x0

    .line 145
    :goto_0
    new-instance v0, Landroid/net/NetworkPolicy;

    move-object v1, p0

    move-wide v6, v4

    move-wide v8, v4

    move-wide v10, v4

    invoke-direct/range {v0 .. v13}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    return-object v0

    .line 138
    :cond_0
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 139
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 140
    iget v2, v0, Landroid/text/format/Time;->monthDay:I

    .line 141
    iget-object v3, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move v12, v13

    .line 142
    goto :goto_0
.end method

.method private static h(Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 242
    if-nez p0, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-object v0

    .line 243
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    new-instance v0, Landroid/net/NetworkTemplate;

    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/android/settings/d/f;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 101
    if-nez v0, :cond_0

    .line 102
    invoke-static {p1}, Lcom/android/settings/d/f;->d(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/android/settings/d/f;->ahW:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    return-object v0
.end method

.method public a(Landroid/net/NetworkTemplate;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/android/settings/d/f;->a(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 156
    iput p2, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    .line 157
    iput-object p3, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    .line 158
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 159
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/d/f;->rR()V

    .line 161
    return-void
.end method

.method public a(Landroid/net/NetworkTemplate;J)V
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/android/settings/d/f;->a(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 170
    iput-wide p2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 171
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 172
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/d/f;->rR()V

    .line 174
    return-void
.end method

.method public a(Landroid/net/NetworkTemplate;Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 199
    .line 201
    invoke-virtual {p0, p1}, Lcom/android/settings/d/f;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 202
    if-eqz p2, :cond_3

    .line 203
    if-nez v2, :cond_2

    .line 204
    invoke-static {p1}, Lcom/android/settings/d/f;->d(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 205
    iput-boolean v1, v2, Landroid/net/NetworkPolicy;->metered:Z

    .line 206
    iput-boolean v0, v2, Landroid/net/NetworkPolicy;->inferred:Z

    .line 207
    iget-object v0, p0, Lcom/android/settings/d/f;->ahW:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 226
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/settings/d/f;->h(Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 227
    invoke-virtual {p0, v2}, Lcom/android/settings/d/f;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 228
    if-eqz v2, :cond_4

    .line 229
    iget-object v0, p0, Lcom/android/settings/d/f;->ahW:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 233
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/d/f;->rR()V

    .line 234
    :cond_1
    return-void

    .line 209
    :cond_2
    iget-boolean v3, v2, Landroid/net/NetworkPolicy;->metered:Z

    if-nez v3, :cond_0

    .line 210
    iput-boolean v1, v2, Landroid/net/NetworkPolicy;->metered:Z

    .line 211
    iput-boolean v0, v2, Landroid/net/NetworkPolicy;->inferred:Z

    move v0, v1

    .line 212
    goto :goto_0

    .line 216
    :cond_3
    if-eqz v2, :cond_0

    .line 218
    iget-boolean v3, v2, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v3, :cond_0

    .line 219
    iput-boolean v0, v2, Landroid/net/NetworkPolicy;->metered:Z

    .line 220
    iput-boolean v0, v2, Landroid/net/NetworkPolicy;->inferred:Z

    move v0, v1

    .line 221
    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method public a([Landroid/net/NetworkPolicy;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/d/f;->gO:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 92
    return-void
.end method

.method public b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/d/f;->ahW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicy;

    .line 110
    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/net/NetworkTemplate;J)V
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/android/settings/d/f;->a(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 183
    iput-wide p2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 184
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 185
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/d/f;->rR()V

    .line 187
    return-void
.end method

.method public c(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/android/settings/d/f;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/android/settings/d/f;->h(Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/d/f;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    goto :goto_0
.end method

.method public e(Landroid/net/NetworkTemplate;)I
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/android/settings/d/f;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    iget v0, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public f(Landroid/net/NetworkTemplate;)J
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/android/settings/d/f;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public g(Landroid/net/NetworkTemplate;)J
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/android/settings/d/f;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public rR()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/d/f;->ahW:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/d/f;->ahW:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/NetworkPolicy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 81
    new-instance v1, Lcom/android/settings/d/g;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/d/g;-><init>(Lcom/android/settings/d/f;[Landroid/net/NetworkPolicy;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/settings/d/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    return-void
.end method

.method public read()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-wide/16 v8, -0x1

    .line 56
    iget-object v2, p0, Lcom/android/settings/d/f;->gO:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v3

    .line 59
    iget-object v2, p0, Lcom/android/settings/d/f;->ahW:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 60
    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 62
    iget-wide v6, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 63
    iput-wide v8, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    move v0, v1

    .line 66
    :cond_0
    iget-wide v6, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 67
    iput-wide v8, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    move v0, v1

    .line 71
    :cond_1
    iget-object v6, p0, Lcom/android/settings/d/f;->ahW:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/d/f;->rR()V

    .line 76
    :cond_3
    return-void
.end method
